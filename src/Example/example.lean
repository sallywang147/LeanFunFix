/--
function takes q 8 bit number, if that number is euqal to 42, return true;
otherwise false; leanFun, no build system; 2 lines of lean code and corresponding C code-/

def checkNumber (num:  UInt8): Bool :=
  if num == 42 then true else false
#eval checkNumber 7
#eval checkNumber 42

def main : IO Unit := do
  IO.println "Tests completed."
