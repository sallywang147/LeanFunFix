/-
-----------------------------------------------------------------------------------
first week of rotation: proven a theorem below and basic tag implementation
------------------------------------------------------------------------------------
-/
-- structure: https://lean-lang.org/doc/reference/latest/Type-Classes/Deriving-Instances/
private structure Tag where -- we do not want malicious users to invoke this struct
  lhs : UInt8
  rhs : UInt8
deriving Repr -- automatically generate instances when we have Repr

  
def Identity(x: UInt8) : Tag :=
  {lhs := x, rhs := x}

def Symmetry(t: Tag) : Tag :=
  {lhs := t.rhs, rhs := t.lhs}


def Transitivity (t1 t2 : Tag) : Option Tag :=
  if t1.rhs == t2.lhs then --(a, b) (b, c)
    some { lhs := t1.lhs, rhs := t2.rhs } --(a, c)
  else
    none

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

-- this invariant is the starting point of this file
-- we proved this theorem during the first week of rotation 
-- goal: for all tags, if derivable, then t.lhs = t.rhs
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


/-
-----------------------------------------------------------------------------------
second week of rotation: proven theorems below
------------------------------------------------------------------------------------
-/


/-
First way to prove that all tags -> derivable 
base cases: we have two derivable tags: t₁ t₂
We use induction by transitivity rule to show that we 
can have another derivable tag t₃

Note: our base case cannot just be a single, non-derivable tag; 
Please see pencil-paper proof for contradiction and the (non)-mechanized wrong proof
-/
theorem constructible_tags_derivable_by_induction 
  (t₁ t₂ t₃ : Tag)
  (h₁ : Derivable t₁)
  (h₂ : Derivable t₂)
  (a b c : UInt8)
  (ht₁ : t₁ = { lhs := a, rhs := b })
  (ht₂ : t₂ = { lhs := b, rhs := c })
  (ht₃ : t₃ = { lhs := a, rhs := c }) :
  Derivable t₃ :=
by
  subst ht₁
  subst ht₂
  subst ht₃
  exact Derivable.transitivity
    { lhs := a, rhs := b }
    { lhs := b, rhs := c }
    h₁
    h₂
    rfl

/-
First way adjacent - the wrong way to prove it:
our base case contains just a single, non-derivable tag: 
we can never go from (a, a) or (b, b) to (a, b) when we induct on the case a!=b
-/

def flip_helper (t : Tag) (h : Derivable t) : Derivable (Symmetry t) :=
  Derivable.symmetry t h


theorem wrong_way_to_prove_all_tags_derivable : ∀ t : Tag, Derivable t := by
  intro t
  cases t with
  | mk a b =>
    -- case analysis on whether a = b
     if h : a = b then
      match h with
      | Eq.refl _ => exact Derivable.identity a
    else
      -- a ≠ b ⇒ derive using identity, symmetry, transitivity
      let t_aa : Tag := { lhs := a, rhs := a }
      let da : Derivable t_aa := Derivable.identity a

      -- Step 2: build {b, b}
      let t_bb : Tag := { lhs := b, rhs := b }
      let db : Derivable t_bb := Derivable.identity b

      -- Step 3: flip {a, a} → {a, a} (trivial)
      let da_flip : Derivable (Symmetry t_aa) := flip_helper t_aa da
      let d_ba' := Derivable { lhs := b, rhs := a }
      -- Step 4: transitivity: {b, b} → {b, a}
      -- Step 4: define target for transitivity
      let t_ba : Tag := { lhs := b, rhs := a }
      let da_sym : Derivable (Symmetry t_aa) := flip_helper t_aa da
      -- Step 5: now apply transitivity
      let d_ba : Derivable t_ba :=
        Derivable.transitivity
          t_bb         -- first input tag
          (Symmetry t_aa)  -- second input tag
          db
          da_sym
          (by rfl)      -- prove t_bb.rhs = (Symmetry t_aa).lhs
            -- Step 5: symmetry to get {a, b}
      let d_ab : Derivable { lhs := a, rhs := b } :=
              flip_helper { lhs := b, rhs := a } d_ba

      exact d_ab


/-
Second way to prove that all constructible tags -> dereivable
if tags are constructed by identity/symmetry/transitivity. 

But we cannot say any arbitrary tag is derivable, e.g. (3, 42) is not derivable 
with proofs showing: a derivable tag -> rhs==lhs. 
By contrapositive: rhs!=lhs -> a tag is not derivable. 

-/

-- If an arbitray tag is derivable,
-- it's built by identity, symmetry, or transitivity
-- This proves soundness: All derivable tags are built using one of our three ruels
theorem only_derivable_by_rules :
  ∀ t : Tag, Derivable t →
    (∃ x, t = Identity x) ∨
    (∃ t₁, Derivable t₁ ∧ t = Symmetry t₁) ∨
    (∃ t₁ t₂, Derivable t₁ ∧ Derivable t₂ ∧ t₁.rhs = t₂.lhs ∧ t = { lhs := t₁.lhs, rhs := t₂.rhs }) := by
  intros t h
  induction h with
  | identity x =>
      left
      exact ⟨x, rfl⟩
  | symmetry t₁ ht ih =>
      right; left
      exact ⟨t₁, ht, rfl⟩
  | transitivity t₁ t₂ ht₁ ht₂ h_eq =>
      right; right
      exact ⟨t₁, t₂, ht₁, ht₂, h_eq, rfl⟩




-- partial completeness proof below: all tags (if built by identity, symmetry, or transitivity) are derivable 
--If an arbitray tag was built by identity, symmetry, or transitivity, 
-- then it's derivable
theorem all_constructible_tags_derivable:
  ∀ t : Tag, 
    (∃ x, t = Identity x) ∨
    (∃ t₁, Derivable t₁ ∧ t = Symmetry t₁) ∨
    (∃ t₁ t₂, Derivable t₁ ∧ Derivable t₂ ∧ t₁.rhs = t₂.lhs ∧ t = { lhs := t₁.lhs, rhs := t₂.rhs }) →
    Derivable t := by
  intros t h
  cases h with
  | inl id_case =>
      obtain ⟨x, hx⟩ := id_case
      rw [hx]
      exact Derivable.identity x
  | inr rest =>
      cases rest with
      | inl sym_case =>
          obtain ⟨t₁, h₁, heq⟩ := sym_case
          rw [heq]
          exact Derivable.symmetry t₁ h₁
      | inr trans_case =>
          obtain ⟨t₁, t₂, h₁, h₂, h_eq, heq⟩ := trans_case
          rw [heq]
          exact Derivable.transitivity t₁ t₂ h₁ h₂ h_eq


      
-- Since we can prove the following theorem, it shows why 
-- All tags (without any resitrcionts) are derivable cannot be proven 
-- We simly cannnot prove that any tag, such as Tag(a, b) where a != b, is derivable 
theorem derivable_implies_lhs_eq_rhs :
  ∀ t : Tag, Derivable t → t.lhs = t.rhs := by
  intro t d
  induction d with
  | identity x =>
      simp [Identity]
  | symmetry t' _ ih =>
      simp [Symmetry]
      rw [ih]
  | transitivity t₁ t₂ _ _ h_eq ih₁ ih₂ =>
      -- t = { lhs := t₁.lhs, rhs := t₂.rhs }
      -- we want to show t₁.lhs = t₂.rhs
      calc
        t₁.lhs = t₁.rhs := ih₁
        _      = t₂.lhs := h_eq
        _      = t₂.rhs := ih₂


/-
Third way: shifting the proof burden to a function

-/
def makeTag (x y : UInt8) : Option Tag :=
  let t₁ := Identity x      -- {x, x}
  let t₂ := Identity y      -- {y, y}
  if t₁.rhs == t₂.lhs then
    Transitivity t₁ t₂
  else
    let t₂_sym := Symmetry t₂
    if t₁.rhs == t₂_sym.lhs then
      Transitivity t₁ t₂_sym
    else
      none
#eval makeTag 42 42 -- some {42, 42}
#eval makeTag 42 50 -- none (can't derive)
#eval makeTag 42 43 -- none (can't derive)


/-
Bonus proof: why evil tag is not constructible -> not derivable 

-/

def evilTag (x : UInt8) : Tag := { lhs := x, rhs := 50 }


theorem evilTag_eq_identity_iff (x : UInt8) : evilTag x = Identity x ↔ x = 50 := by
  constructor
  · intro h
    -- Use field projection to extract that rhs must match
    have rhs_eq : (evilTag x).rhs = (Identity x).rhs := by rw [h]
    simp [evilTag, Identity] at rhs_eq
    exact rhs_eq.symm
  · intro hx
    -- If x = 50, then both definitions produce {x, 50} = {50, 50}
    rw [hx]
    rfl

theorem evilTag_ne_identity_of_ne_50 (x : UInt8) (h : x ≠ 50) : evilTag x ≠ Identity x := by
  intro contra
  -- From equality, deduce x = 50 using the iff theorem
  have : x = 50 := (evilTag_eq_identity_iff x).mp contra
  contradiction


theorem evilTag_not_derivable (x : UInt8) (h : x ≠ 50) : ¬ Derivable (evilTag x) := by
  intro d
  have eq := derivable_implies_lhs_eq_rhs (evilTag x) d
  -- evilTag x = { lhs := x, rhs := 50 } ⇒ eq : x = 50
  apply h
  exact eq



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




