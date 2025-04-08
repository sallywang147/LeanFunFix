-- Declare the constants
def x : UInt8 := 5
def y : UInt8 := x    -- So x = y
def z : UInt8 := 6

-- Proof: y ≠ z
theorem y_ne_z : y ≠ z := by
  -- Unfold definitions
  unfold y z x
  -- Now it's 5 ≠ 6, so Lean can decide this
  decide
