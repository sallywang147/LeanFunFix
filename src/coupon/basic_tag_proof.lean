-- structure: https://lean-lang.org/doc/reference/latest/Type-Classes/Deriving-Instances/
structure Tag where
  lhs : UInt8
  rhs : UInt8
deriving Repr -- automatically generate instances when we have Repr

def Identity(x: UInt8) : Tag :=
  {lhs := x, rhs := x}

def Symmetry(t: Tag) : Tag :=
  {lhs := t.rhs, rhs := t.lhs}


def Transitivity (t1 t2 : Tag) : Option Tag :=
  if t1.rhs == t2.lhs then
    some { lhs := t1.lhs, rhs := t2.rhs }
  else
    none

-- evilTag cannot exist: all tags should be derivable; NOT if a tag is derivable, then we do stuff
def evilTag(x: UInt8): Tag := 
  {lhs := x, rhs := 52}
/-
https://leanprover.github.io/theorem_proving_in_lean4/inductive_types.html
In Lean's library, 
every concrete type other than the universes and 
every type constructor other than dependent arrows 
is an instance of a general family of type constructions known as inductive types
-/
-- a logic predicate: a tag is derivable. a derivable is a custom inductive type we define
-- derivable(x) holds iff we can build a derivation of x using the rules/funcs you define
inductive Derivable : Tag → Prop --dependent type: tag as input, proposition as output
| identity (x : UInt8) : Derivable (Identity x)
| symmetry (t : Tag) (h : Derivable t) : Derivable (Symmetry t)
| transitivity (t u : Tag) (ht : Derivable t) (hu : Derivable u) (h_eq : t.rhs = u.lhs) :
    Derivable { lhs := t.lhs, rhs := u.rhs }
  

--goal: t.lhs = t.rhs
theorem equivalence_invariant : ∀ (t : Tag), Derivable t → t.lhs = t.rhs :=
  by
    intros t h
    induction h with
    | identity x =>
        -- simp: it unfolds the defition, simplify goals etc, but it doesn't do case split or induction
        simp [Identity]
    | symmetry t' h' IH =>
        simp [Symmetry] at *
        exact (Eq.symm IH)
    --IHt:  h_eq: t.rhs = u.lhs
    --h_eq: t.rhs = u.lhs
    --IHu: u.lhs = u.rhs
    | transitivity t u ht hu h_eq IHt IHu =>
        --goal: t.lhs = t.rhs
        --rewrite goal by IHt first: t.lhs = u.lhs
        --rewrite goal by h_eq: u.lhs = u.lhs
        --rewrite goal by IHu: u.lhs = u.rhs
        rw [IHt, h_eq, IHu]


-- The contradiction result: x ≠ y' but Derivable (x, y) and Derivable (x, y') implies false
theorem derivable_tag_eq_impossible {x y y' : UInt8}
    (h1 : Derivable ⟨x, y⟩)
    (h2 : Derivable ⟨x, y'⟩)
    (h_ne : y ≠ y') : False :=
  by
    have h_eq1 := equivalence_invariant ⟨x, y⟩ h1
    have h_eq2 := equivalence_invariant ⟨x, y'⟩ h2
    rw [h_eq1] at h_eq2
    contradiction
