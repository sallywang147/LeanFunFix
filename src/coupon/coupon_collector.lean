structure Tag where 
  lhs : UInt8
  rhs : UInt8
deriving Repr 

-- Explicit operations user can request (same names as constructors)
inductive request --exposed to user
| Identity : UInt8 → request
| Symmetry : Tag → request
| Transitivity: Prod Tag Tag → request --a structure: multi-args

-- more lean-style programming 
def apply_coupon_collector : request → Option Tag
| request.Identity x       => some ({lhs := x, rhs := x})
| request.Symmetry t       => some ({lhs := t.rhs, rhs := t.lhs})
| request.Transitivity (t₁, t₂) => if t₁.rhs == t₂.lhs then some {lhs := t₁.lhs, rhs := t₂.rhs} else none


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
-- some { lhs := 5, rhs := 5 }
def evilTag (x : UInt8) : Tag := { lhs := x, rhs := 50 }

def createEvil : FuncSelector := FuncSelector.Symmetry (evilTag 3)
#eval createEvil
-- No function should return a Tag unless it comes from createTag
-- define a functional level invariant

-- if all tags to apply func are true, then the output is true 
def createTag_Invariant {α} (f : α → Tag) : Prop :=
  ∀ x, ∃ fs, apply_coupon_collector fs = some (f x)

-- This type α → Tag is only legal if it satisfies the invariant.
class TagGeneratingFunction (α : Type) where
  f : α → Tag
  ok : createTag_Invariant f

theorem all_tag_generators_respect_invariant {α : Type} [inst : TagGeneratingFunction α] :
  createTag_Invariant inst.f :=
  inst.ok


