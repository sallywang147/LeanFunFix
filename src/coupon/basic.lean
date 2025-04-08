import Mathlib.Data.Real.Basic

-- Declare the constants
def x : UInt8 := 5
def y : UInt8 := x    -- So x = y
def z : UInt8 := 6

-- Proof: y ≠ z this is probably too trivial 
theorem y_ne_z : y ≠ z := by
  -- Unfold definitions: we can unfold variables, functions, but not partial functions
  -- 
  unfold y z x
  -- Now it's 5 ≠ 6, so Lean can decide this
  decide

/-
Proposition 1: For all natural numbers x and y, if x = 5 and y = 5 then x = y.
This captures the uniqueness of the numeral 5.
-/
lemma uniqueness_of_5 {x y : ℕ} (hx : x = 5) (hy : y = 5) : x = y :=
by rw [hx, hy]

/-
Proposition 2: For all natural numbers x, y, and z, if x = y and y = z then x = z.
This is the transitivity of equality.
-/
lemma trans_eq {x y z : ℕ} (hxy : x = y) (hyz : y = z) : x = z :=
by rw [hxy, hyz]

/-
Now we prove that it's not possible to have 5 = 6. 

Proof idea:
1. Assume (for contradiction) that 5 = 6.
2. We know by the standard property of natural numbers that 5 is less than its successor, i.e. 5 < 6.
3. Rewriting the inequality using the assumption 5 = 6, we would get 6 < 6.
4. Since no natural number is less than itself (irreflexivity of <), we reach a contradiction.
-/
example : ¬ (5 = 6) := by
  intro h,                         -- assume 5 = 6 for contradiction
  have h_lt : 5 < 6 := nat.lt_succ_self 5,  -- 5 is less than 6 (by the successor property)
  rw h at h_lt,                    -- rewriting 5 as 6 gives 6 < 6
  exact nat.lt_irrefl 6 h_lt        -- 6 < 6 is impossible since lt is irreflexive