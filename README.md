# LeanFunFix

## A simple lean example below from src/Example/example.lean to illustrate: 1)  how to run a Lean program; 2) how to extract C code; 3) how to compile extracted C code.

<img width="452" alt="Screen Shot 2025-03-18 at 12 12 11 AM" src="https://github.com/user-attachments/assets/4e78e930-5a1e-4566-998d-7cf24013c0b4" />

### run a Lean program

**Assumptions**: 
1. you have lean4 installed on your system. If not, please check out the installation manual [here](https://leanprover-community.github.io/install/macos.html) for MacOS.
2. This code has only been tested on MacOS for the time being. We will expand testing on linux platform in due course. 

```
cd src/Example
lean --run example.lean
```
The command will produce the following output: 

<img width="430" alt="Screen Shot 2025-03-18 at 12 22 59 AM" src="https://github.com/user-attachments/assets/039ed496-ecf2-41d2-afc6-c3242a7adcef" />

### Extract C code from a Lean program and run extracted C code

**Note**: C code extracted from Lean programs contains all lean functions, but not #eval statements. 

```
cd src/Example
lean -c example.c example.lean
```

The command will produce the c file such as [example.c](https://github.com/sallywang147/LeanFunFix/blob/main/src/Example/example.c)

To compile the extracted c code and produce a binary called example, where leanc is a lean4 developed wrapper around clang. More on Leanc [here](https://github.com/leanprover/lean4/blob/master/src/Leanc.lean)
```
leanc example.c  -o example
./example
```
The command will produce the following output: 

<img width="380" alt="Screen Shot 2025-03-18 at 12 27 46 AM" src="https://github.com/user-attachments/assets/461acba9-8543-45d8-bd5c-8bb2272a2eb4" />

## Build and run Lean programs using Lake

### Using Lake to manage the project 

If you have multiple lean files and you want to build them, you can use lake build system from lean. Please see [Lake](https://github.com/leanprover/lean4/blob/master/src/lake/README.md) for more information on the build system. 

```
lake new src
cd src
```

That will prodce the following: 
```
.lake/         # Lake output directory
Hello/         # library source files; accessible via `import Hello.*`
  Basic.lean   # an example library module file
  ...          # additional files should be added here
Hello.lean     # library root; imports standard modules from Hello
Main.lean      # main file of the executable (contains `def main`)
lakefile.toml  # Lake package configuration
lean-toolchain # the Lean version used by the package
.gitignore     # excludes system-specific files (e.g. `build`) from Git
```

### Lake generated C files for each lean files

You will see all generated C files in the lake managed project

```
lake build
cd src/.lake/build/ir
```

If you want to compile run the Main.c from lake extracted C code [here] (https://github.com/sallywang147/LeanFunFix/tree/main/src/.lake/build/ir): 

```
leanc Main.c Checker/Basic.c Checker.c -o Main
./Main
```
This would produce the same command line output as if you run the lean --run filename.lean alone. 



