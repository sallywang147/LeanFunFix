def checkNumber (num:  UInt8): Bool :=
  if num == 42 then true else false

def main : IO Unit := do
  IO.println "Done."