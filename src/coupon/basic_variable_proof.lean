-- Assume variables of type UInt8
variable (x : UInt8)
variable (y : UInt8)
variable (z : UInt8)

-- Assumptions
variable (hxy : x = y)
variable (hzx : z ≠ x)

-- Theorem 1: x = y ∧ z ≠ x (just restating assumptions)
theorem assumptions_hold : x = y ∧ z ≠ x := by
  exact ⟨hxy, hzx⟩

-- Theorem 2: x = z ∨ y = z is not possible
theorem no_match_with_z (x y z : UInt8) (hxy : x = y) (hzx : z ≠ x) : ¬ (x = z ∨ y = z) := by
  intro h
  cases h with
  | inl hxz => -- inl: insert left ffor the Or (disjunction) type
    -- Case: x = z → contradiction with z ≠ x
    exact hzx (Eq.symm hxz)
  | inr hyz =>
    -- We want to go from y = z to x = z using x = y
    -- So turn x = y into y = x and rewrite in hyz
    have h' : x = z := by
      rw [←hxy] at hyz  -- turns hyz : y = z into x = z
      exact hyz
    exact hzx (Eq.symm h')  -- now h' : x = z → flip to z = x


