-- This module serves as the root of the `CouponCollector` library.
-- Import modules here that should be built as part of the library.
import Paperproof --tool to visualize proofs (I recommend to our group)

structure Tag where 
  lhs : UInt8
  rhs : UInt8
deriving Repr 

-- Explicit operations user can request (same names as constructors)
inductive request --exposed to user
| Identity : UInt8 → request
| Symmetry : Tag → request
| Transitivity: Prod Tag Tag → request --a structure: multi-args

def apply_coupon_collector : request → Option Tag
| request.Identity x       => some ({lhs := x, rhs := x})
| request.Symmetry t       => some ({lhs := t.rhs, rhs := t.lhs})
| request.Transitivity (t₁, t₂) => if t₁.rhs == t₂.lhs then some {lhs := t₁.lhs, rhs := t₂.rhs} else none


class ValidRequest (r : request) : Prop where
  ok : match r with
       | request.Identity _ => True
       | request.Symmetry _ => True
       | request.Transitivity (t₁, t₂) => t₁.rhs = t₂.lhs

class ValidOutput (r : request) (t : Tag) : Prop
-- Identity: must produce (x, x)
instance validOutput_identity (x : UInt8) :
  ValidOutput (request.Identity x) { lhs := x, rhs := x } :=
  ⟨⟩

-- Symmetry: must produce (y, x) from (x, y)
instance validOutput_symmetry (t : Tag) :
  ValidOutput (request.Symmetry t) { lhs := t.rhs, rhs := t.lhs } :=
  ⟨⟩

-- Transitivity: must produce (x, z) from (x, y), (y, z)
instance validOutput_transitivity (t₁ t₂ : Tag) (h : t₁.rhs = t₂.lhs) :
  ValidOutput (request.Transitivity (t₁, t₂)) { lhs := t₁.lhs, rhs := t₂.rhs } := ⟨⟩


theorem apply_coupon_collector_functionally_correct
  (r : request) [ValidRequest r] :
  ∃ t : Tag,
  apply_coupon_collector r = some t ∧ ValidOutput r t :=
by
  cases r with
  | Identity x =>
      apply Exists.intro { lhs := x, rhs := x }
      apply And.intro
      simp [apply_coupon_collector]
      exact validOutput_identity x  

  | Symmetry t₀ =>
   apply Exists.intro { lhs := t₀.rhs, rhs := t₀.lhs }
   apply And.intro
   simp [apply_coupon_collector]
   exact validOutput_symmetry t₀
  -- Lean 4 does not allow pattern matching with 
  -- parentheses like (t₁, t₂) in | ConstructorName pattern 
  -- We should avoid Transitivity (t₁, t₂) here
  -- we should avoid using have h: ValidRequest.ok due to terrible type mismatch
  | Transitivity pair =>
      apply Exists.intro { lhs := pair.fst.lhs, rhs := pair.snd.rhs }
      apply And.intro
      simp [apply_coupon_collector]
      exact ValidRequest.ok (r := request.Transitivity pair)
      exact validOutput_transitivity pair.fst pair.snd (ValidRequest.ok (r := request.Transitivity pair))
  

    




-- def createTag_Invariant (f : α → Tag) : Prop :=
--  ∀ x, ∃ fs, apply_coupon_collector fs = some (f x)

-- all true inputs give us true outputs 
-- theorem correctness_of_apply {request: Type u} (f: request → Option Tag): 
 --                     ∀ (r: request), ∀

-- prove statements about apply_coupon_collector


/-
Test cases, test theorems for coupon collector below 
-/
--open coupon_collector
-- simple test cases below

#eval apply_coupon_collector (request.Identity 5)
#eval apply_coupon_collector (request.Symmetry { lhs := 2, rhs := 50 })
-- some { lhs := 5, rhs := 5 }
def evilTag (x : UInt8) : Tag := { lhs := x, rhs := 50 }




