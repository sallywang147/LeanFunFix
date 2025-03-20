import ImportGraph.Imports
import Std.Lean.Util.Path
import Lake

open Lean System

-- This is what we want to compile and should contain `main`
def root : Name := `Main
-- Is this going to be ran on a webpage (i.e. should we MODULARIZE).
def web : Bool := false

unsafe def main : IO UInt32 := do
  let outdir : FilePath := ".lake" / "build" / "wasm" -- todo generalise
  if ¬ (←FilePath.pathExists outdir) then
    IO.FS.createDirAll outdir

  let wasm_tc := s!"lean-{Lean.versionString}-linux_wasm32"
  let toolchain : FilePath := "toolchains" / wasm_tc -- should this be moved into `.lake`?
  if ¬ (←FilePath.pathExists toolchain) then
    IO.println "Couldn't find toolchain (should be in './toolchains') will try downloading."

    let lean4_link := "https://github.com/leanprover/lean4/releases/download"
    let link := s!"{lean4_link}/v{Lean.versionString}/{wasm_tc}.tar.zst"
    let local_tar : FilePath := s!"{toolchain}.tar.zst"

    let _ ← Lake.LogIO.captureLog do
      let () ← Lake.download wasm_tc link local_tar
      let () ← Lake.untar wasm_tc local_tar "toolchains"

  IO.println "Finding relevant dependencies..."
  /- Find relevant C-files to compile, we don't want to compile everything
      if possible because there could be unexpected name collisions and having
      less files to process significantly speeds up compilation.
  -/
  -- based on mathlib's import graph
  searchPathRef.set compile_time_search_path%
  let c_array ←
    withImportModules #[{module := root}] {} (trustLevel := 1024)
      fun env => do
        let graph := env.importGraph.filter (fun n _ =>
            -- already included in the toolchain
            ¬Name.isPrefixOf `Lean n ∧ ¬Name.isPrefixOf `Init n
          )
        let sp ← searchPathRef.get
        let sp : Lean.SearchPath := sp.map (fun p => (p / ".." / "ir"))

        let cfiles ← graph.toList.mapM (fun (mod, _) => do
            -- copied/modified hacked from Lean.findOLean
            if let some fname ← sp.findWithExt "c" mod then
              return fname
            else
              -- todo: make error msg better : )
              throw <| IO.userError s!"Could not find C for {mod}"
          )
        return cfiles.map toString |>.toArray

  IO.println s!"Found {c_array.size} files."
  IO.println "Compiling (this can take a while)..."

  -- should this just be moved into a bash script that takes the files?
  let out ← IO.Process.output {
      stdin  := .piped
      stdout := .piped
      stderr := .piped
      cmd    := "emcc"
      args   :=
       #[ "-o"
        , outdir / "main.js" |>.toString
        , "-I"
        , toolchain / "include" |>.toString
        , "-L"
        , toolchain / "lib" / "lean" |>.toString
        ] ++ c_array ++
       #[ "-lInit"
        , "-lLean"
        , "-lleancpp"
        , "-lleanrt"
        , "-sFORCE_FILESYSTEM"
        ] ++ (if web
              then #["-sMODULARIZE", "-sEXPORT_NAME=" ++ root.toString]
              else #["-sNODERAWFS"] -- allows node to directly interact w/ local FS
             ) ++
       #[ "-lnodefs.js"
        , "-sEXIT_RUNTIME=0"
        , "-sMAIN_MODULE=2" -- use 2 to reduce exports to a usable amount
        , "-sLINKABLE=0"
        , "-sEXPORT_ALL=0"
        , "-sALLOW_MEMORY_GROWTH=1"
        , "-fwasm-exceptions"
        , "-pthread"
        , "-flto"
        -- , "-Oz"    -- takes longer to compile but optimises for size
        ]
    }

  IO.println out.stdout
  IO.println out.stderr

  return out.exitCode