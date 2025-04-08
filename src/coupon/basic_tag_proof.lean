structure Tag where
  lhs : UInt8
  rhs : UInt8
deriving Repr

def Identity(x: UInt8) : Tag :=
  {lhs := x, rhs := x}

def Symmetry(t: Tag) : Tag :=
  {lhs := t.lhs, rhs := t.rhs}


def Transitivity (t1 t2 : Tag) : Option Tag :=
  if t1.rhs == t2.lhs then
    some { lhs := t1.lhs, rhs := t2.rhs }
  else
    none
    
-- Define equivalence prposition for tags
def TagEquiv (t1 t2 : Tag) : Prop :=
  t1 = t2

-- Theorem: reflexivity — a tag is always equivalent to itself
theorem tag_equiv_refl (t : Tag) : TagEquiv t t := by
  unfold TagEquiv 
  rfl

-- Theorem: symmetry — if t1 is equivalent to t2, then t2 is equivalent to t1
theorem tag_equiv_symm (t1 t2 : Tag) (h : TagEquiv t1 t2) : TagEquiv t2 t1 := by
  unfold TagEquiv at *
  rw [h]

-- Theorem: transitivity — if t1 ≡ t2 and t2 ≡ t3, then t1 ≡ t3
theorem tag_equiv_trans (t1 t2 t3 : Tag)
    (h1 : TagEquiv t1 t2) (h2 : TagEquiv t2 t3) : TagEquiv t1 t3 := by
  unfold TagEquiv at *
  rw [h1, h2]



-- Define equivalence relation as structural equality
theorem same_tags_equiv (t : Tag) : TagEquiv t t := by
  unfold TagEquiv
  rfl

theorem tags_equiv_iff_equal (t1 t2 : Tag) : TagEquiv t1 t2 ↔ t1 = t2 := by
  unfold TagEquiv
  exact Iff.rfl

-- Theorem: If two tags are not equal, they are not equivalent
theorem tags_not_equiv_if_not_equal (t1 t2 : Tag) (h : t1 ≠ t2) : ¬ TagEquiv t1 t2 := by
  unfold TagEquiv
  exact h
