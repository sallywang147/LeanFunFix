
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
theorem correctness_of_apply {request: Type u} (f: request → Option Tag): 
                      ∀ (r: request), ∀

-- prove statements about apply_coupon_collector


/-
Test cases, test theorems for coupon collector below 
-/
--open coupon_collector
-- simple test cases below

#eval apply_coupon_collector (request.Identity 5)
-- some { lhs := 5, rhs := 5 }

#eval coupon_collector.FuncSelector 5

#eval createTag (FuncSelector.Symmetry coupon_collector.FuncSelector.Identity 5)

#eval createTag (FuncSelector.Symmetry { lhs := 4, rhs := 9 })
-- some { lhs := 9, rhs := 4 }

#eval createTag (FuncSelector.Transitivity { lhs := 1, rhs := 2 } { lhs := 2, rhs := 3 })
-- some { lhs := 1, rhs := 3 }


/-
Attempted proof on createTag functional correctness 
-/
inductive Derivable : Tag → Prop
| identity (x : UInt8) : Derivable (Identity x)
| symmetry (t : Tag) (h : Derivable t) : Derivable (Symmetry t)
| transitivity (t1 t2 : Tag)
    (h1 : Derivable t1) (h2 : Derivable t2)
    (boundary : t1.rhs = t2.lhs) :
    Derivable (match Transitivity t1 t2 with | some t => t | none => t1)


-- Theorem: All derivable tags must come from createTag
theorem all_tags_come_from_createTag :
  ∀ (t : Tag), Derivable t →
    ∃ fs : FuncSelector, createTag fs = some t := by
  intro t d
  induction d with
  | identity x =>
      exact ⟨.Identity x, rfl⟩
  | symmetry t' _ ih =>
      cases ih with
      | intro fs h =>
          exact ⟨.Symmetry t', rfl⟩
  | transitivity t1 t2 _ _ h_eq ih₁ ih₂ =>
      cases ih₁ with
      | intro fs₁ h₁ =>
      cases ih₂ with
      | intro fs₂ h₂ =>
        --rw [←h_eq] at h₂ -- optional depending on tactic goal shape
        have transVal : Transitivity t1 t2 = some { lhs := t1.lhs, rhs := t2.rhs } := by
          simp [Transitivity, h_eq]
        rw [transVal]
        exact ⟨.Transitivity t1 t2, transVal⟩

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


instance : TagGeneratingFunction UInt8 where
  f := evilTag
  ok := by
    intro x

def get_id_tag (x : UInt8) : Tag := Identity x

instance : TagGeneratingFunction UInt8 where
  f := get_id_tag
  ok := by
    intro x
    exact ⟨.Identity x, rfl⟩


def get_symm_tag (x : Tag) : Tag := Symmetry x

instance : TagGeneratingFunction Tag where
  f := get_symm_tag
  ok := by
    intro x
    exact ⟨.Symmetry x, rfl⟩

