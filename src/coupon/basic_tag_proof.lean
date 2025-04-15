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
-- goal: for all tags, if derivable, then t.lhs == t.rhs
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
------------------------------------------------------------------------------------
second week of rotation: proven theorems to show "all tags are derivable" below
------------------------------------------------------------------------------------
-/


/-
First way to prove that all tags -> derivable
Necessary assumptions by this methodd: 
having derivable tags as base case or making Derivable a total relation 

base cases: we have two derivable tags: t₁ t₂
We use induction by transitivity rule to show that we 
can have another derivable tag t₃. This proof is equivalent to changing our derivable inductive type into 

1) we add a base case where we have a subset of derivable tags 
inductive Derivable (Base : Tag → Prop) : Tag → Prop
| base (t : Tag) (h : Base t) : Derivable t
| identity (x : UInt8) : Derivable (Identity x)
| symmetry (t : Tag) (h : Derivable t) : Derivable (Symmetry t)
| transitivity (t u : Tag) (ht : Derivable t) (hu : Derivable u) (h_eq : t.rhs = u.lhs) :
    Derivable { lhs := t.lhs, rhs := u.rhs }

or 2) we define inductive Derivable type as a total relation by adding a total relation: 
which defines inductive Derivable type as for every t : Tag, Derivable t holds 
inductive Derivable : Tag → Prop
| identity (x : UInt8) : Derivable (Identity x)
| symmetry (t : Tag) (h : Derivable t) : Derivable (Symmetry t)
| transitivity (t u : Tag) (ht : Derivable t) (hu : Derivable u)
    (h_eq : t.rhs = u.lhs) : Derivable { lhs := t.lhs, rhs := u.rhs }
| total (t : Tag) : Derivable t  

We do not pursue 1) or 2), because it will break out earlier proofs by proving additional base 
or total relation cases. Also if we use 2), "all tags are derivable" becomes a trivial statement
by Derivable definition. We no longer need a proof for it. Do we want that? 

Note: our base case cannot just be a single, non-derivable tag; 
Please see pencil-paper proof for contradiction and the (non)-mechanized wrong proof
-/
theorem constructible_tags_derivable_by_induction 
  (t₁ t₂ t₃ : Tag)  -- we have three abritrary tags t₁ t₂ t₃
  (a b c : UInt8) --and three UInt8 numbers a b c
  (h₁ : Derivable t₁) --our base case: two derivable tags t₁ and t₂
  (h₂ : Derivable t₂) --our base case: two derivable tags t₁ and t₂
  (ht₁ : t₁ = { lhs := a, rhs := b }) 
  (ht₂ : t₂ = { lhs := b, rhs := c })
  (ht₃ : t₃ = { lhs := a, rhs := c }) :
  Derivable t₃ :=  -- goal: from two derivable tags t₁ and t₂, we can construct another derivable tag t₃
by
  subst ht₁ -- substitute every t₁ by {a, b}: we tell lean to use the concrete version instead of vars
  subst ht₂
  subst ht₃
  exact -- finish the proof by thee following 
    Derivable.transitivity --using transitivity rule
    { lhs := a, rhs := b } -- a tag 1
    { lhs := b, rhs := c }  --- a tag 2
    h₁ -- tag 1 derivable by base case
    h₂ -- tag 2 derivable by base case
    rfl -- prove that b==b 

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
Second way to prove that all **constructible** tags <-> dereivable
assumption: the tags we have are constructed by identity/symmetry/transitivity

proof strategy: 
if a tag is derivable, it's built by identity, symmetry, or transitivity
if a tag is built by identity, symmetry, or transitivity, then it's derivable 


But we cannot say any arbitrary tag is derivable, e.g. (3, 42) is not derivable 
with proofs showing: a derivable tag -> rhs==lhs. 
By contrapositive: rhs!=lhs -> a tag is not derivable. 

Why? by the inductive definition of derivable, inductive Derivable: tag-> prop is not a total relation


-/

-- If an arbitray tag is derivable,
-- it's built by identity, symmetry, or transitivity
-- This proves soundness: All derivable tags are built using one of our three rules 
-- 
theorem only_derivable_by_rules :
  ∀ t : Tag, Derivable t →
    (∃ x, t = Identity x) ∨
    (∃ t₁, Derivable t₁ ∧ t = Symmetry t₁) ∨
    (∃ t₁ t₂, Derivable t₁ ∧ Derivable t₂ ∧ t₁.rhs = t₂.lhs ∧ t = { lhs := t₁.lhs, rhs := t₂.rhs }) := by
  intros t h
  induction h with
  | identity x =>
      left -- (∃ x, t = Identity x)
      exact ⟨x, rfl⟩ --from lean documentation: ⟨x, p⟩ where p : P x	A value of type Σ x, P x or ∃ x, P x
                     -- in our case, we say x is the witness for ∃ x, rfl is the proof that t = Identity x

  /-when induction hypo h 
  was built using symmetry constructor 
  we do not need to declare ht or ih, because lean automatically binds it to the constructor args
  -/
  | symmetry t ht ih => 
      right; left  
      exact ⟨t, ht, rfl⟩
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
  | inl id_case => -- inl: left injection into an or:  (∃ x, t = Identity x)
      obtain ⟨x, hx⟩ := id_case 
      rw [hx]  -- rewrite t by Indentity x to prevent type error  
      exact Derivable.identity x
  | inr rest =>    -- inr rest: not the first case, the remaining cases
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
      -- wrong way: exact Identity, due to type error
      simp [Identity]
  | symmetry t' _ ih =>
      simp [Symmetry]
      rw [ih]
  | transitivity t₁ t₂ _ _ h_eq ih₁ ih₂ =>
      -- t = { lhs := t₁.lhs, rhs := t₂.rhs }
      -- we want to show t₁.lhs = t₂.rhs
      calc --calc does chaining 
      /-
      t₁.lhs
        = t₁.rhs      -- by ih₁
        = t₂.lhs      -- by h_eq
        = t₂.rhs      -- by ih₂
      -/
        t₁.lhs = t₁.rhs := ih₁
        _      = t₂.lhs := h_eq
        _      = t₂.rhs := ih₂


/-
Third way: shifting the proof burden to a function and we generate tags by matching 
proofs 

-/
inductive Equivalent : UInt8 → UInt8 → Type
| identity (x : UInt8) : Equivalent x x
| symm {x y : UInt8} : Equivalent x y → Equivalent y x
| trans {x y z : UInt8} : Equivalent x y → Equivalent y z → Equivalent x z


def createTag (x y : UInt8) (proof : Equivalent x y) : Option Tag :=
  match proof with        -- matching against a proof of type Equivalent x y
  | Equivalent.identity _ =>  -- _ is Lean's wildcard pattern, saying I just want to match shape
                          -- in our case, it's same as Equivalent.identity(x, UInt8)
                          -- this case can only match if x==y
      some { lhs := x, rhs := x }

  | Equivalent.symm p' =>  --matching on Equivalent.symm.  p' gives us : (Equivalent x y) from function 
                           -- signature
      createTag y x p'  -- since proof is for y == x
                        -- Equivalent.symm (proof : Equivalent 7 8) doesn't exist, because we cannot construct
                        -- a transition chain towards Equivalent 7, 8 from a identity base case Equivalent x x

  | Equivalent.trans p₁ p₂ => -- p₁ : Equivalent x z; p₂ : Equivalent z y
      match createTag x _ p₁, createTag _ y p₂ with -- recursively invoking createTag 
                                                    -- a tag t1 for x ≡ z by p₁ and a tag t2 for z ≡ y    
      | some t1, some t2 =>
          if t1.rhs == t2.lhs ∧ t1.lhs == x ∧ t2.rhs == y then
            some { lhs := x, rhs := y }
          else none
      | _, _ => none

def createIdentityTag (x : UInt8) : Option Tag :=
  createTag x x (Equivalent.identity x)

def createSymmetryTag (t : Tag) (proof : Equivalent t.lhs t.rhs) : Option Tag :=
  createTag t.rhs t.lhs (Equivalent.symm proof)
/-
what does createSymmetryTag  do? 
proof : Equivalent a b

  Equivalent.symm proof : Equivalent b a

  createTag b a (Equivalent.symm proof)

  generating Option Tag { lhs := b, rhs := a }

it's not possible to have Equivalent a b where a !=b, because 
it must have been built from a chain of reasoning starting with Equivalent x x,
and composed via symmetry and transitivity

-/

def createTransitivityTag (t1 t2 : Tag)
  (proof1 : Equivalent t1.lhs t1.rhs)
  (proof2 : Equivalent t2.lhs t2.rhs)
  (proof : Equivalent t1.lhs t2.rhs) : Option Tag :=
  createTag t1.lhs t2.rhs proof


-- some test cases for the third way: it's not possible to use createTag to create evilTag 
#eval createTag 7 7 (Equivalent.identity 7)  -- returns a tag: some { lhs := 7, rhs := 7 }
#eval createTag 7 8 (Equivalent.identity 7)  -- not happening 

def Tag₁ : Tag := { lhs := 7, rhs := 7 }
def proof₁ : Equivalent Tag₁.lhs Tag₁.rhs := Equivalent.identity 7
#eval createSymmetryTag Tag₁ proof₁

def Tag₂ : Tag := { lhs := 7, rhs := 7 }
def proof₂ : Equivalent Tag₂.lhs Tag₂.rhs := Equivalent.symm (Equivalent.identity 7)
#eval createSymmetryTag Tag₂ proof₂


/-
Bonus proof: why evil tag is not constructible -> not derivable even without createTag function
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




