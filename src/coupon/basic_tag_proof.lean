-- structure: 
structure Tag where
  lhs : UInt8
  rhs : UInt8
deriving Repr, DecidableEq  -- automatically generate instances

def Identity(x: UInt8) : Tag :=
  {lhs := x, rhs := x}

def Symmetry(t: Tag) : Tag :=
  {lhs := t.lhs, rhs := t.rhs}


def Transitivity (t1 t2 : Tag) : Option Tag :=
  if t1.rhs == t2.lhs then
    some { lhs := t1.lhs, rhs := t2.rhs }
  else
    none


inductive Derivable : Tag → Prop
| identity (x : UInt8) : Derivable (Identity x)
| symmetry (t : Tag) (h : Derivable t) : Derivable (Symmetry t)
| transitivity (t u : Tag) (ht : Derivable t) (hu : Derivable u) (h_eq : t.rhs = u.lhs) :
    Derivable { lhs := t.lhs, rhs := u.rhs }
  
open Derivable
theorem derivable_invariant : ∀ (t : Tag), Derivable t → t.lhs = t.rhs :=
  by
    intros t h
    induction h with
    | identity x =>
        simp [Identity]
    | symmetry t' h' IH =>
        simp [Symmetry] at *
        exact IH
    | transitivity t u ht hu h_eq IHt IHu =>
        rw [IHt, h_eq, IHu]


-- The contradiction result: x ≠ y' but Derivable (x, y) and Derivable (x, y') implies false
theorem derivable_tag_eq_impossible {x y y' : UInt8}
    (h1 : Derivable ⟨x, y⟩)
    (h2 : Derivable ⟨x, y'⟩)
    (h_ne : y ≠ y') : False :=
  by
    have h_eq1 := derivable_invariant ⟨x, y⟩ h1
    have h_eq2 := derivable_invariant ⟨x, y'⟩ h2
    rw [h_eq1] at h_eq2
    contradiction

    /-
       x
      ------------
      tag(x, x)
    -/