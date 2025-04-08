def checkNumber (num:  UInt8): Bool :=
  if num == 42 then true else false

-- Theorem 1: checkNumber returns true for input 42
theorem checkNumber_eq_true : checkNumber 42 = true := by
  unfold checkNumber
  have h : ((42 : UInt8) == 42) = true := by
    exact decide_eq_true rfl
  rw [h]
  rfl

-- Theorem 2: checkNumber returns false for inputs not equal to 42
theorem checkNumber_ne_false (n : UInt8) (h : n ≠ 42) : checkNumber n = false := by
  unfold checkNumber
  -- Use decide_eq_false to reduce n == 42 = false from the hypothesis
  have h' : ((n == 42)) = false := by
    apply decide_eq_false
    exact h
  rw [h']
  rfl


-- we need a main function to invoke lean --run in the terminal
-- Main function to test tag assignment and equivalence
/- 
def main : IO Unit := do
  let a : UInt8 := 42
  let b : UInt8 := 10
  let tagA := assignTag a
  let tagB := assignTag b

  IO.println s!"Input A: {tagA.value}, Tag: {tagA.tag}"
  IO.println s!"Input B: {tagB.value}, Tag: {tagB.tag}"

  if EquivalnceTag tagA tagB then
    IO.println "Result: Tags are equivalent"
  else
    IO.println "Result: Tags are different"
  -/