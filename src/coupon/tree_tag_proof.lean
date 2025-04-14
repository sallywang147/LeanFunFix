
inductive Tree (β : Type v) where
  | leaf
  | node (left : Tree β) (key : Nat) (value : β) (right : Tree β)
  deriving Repr

--Polymorphic Tag
structure Tag (β : Type v) where
  lhs : Tree β
  rhs : Tree β
deriving Repr

def Identity {β : Type v} (t : Tree β) : Tag β :=
  { lhs := t, rhs := t }

def Symmetry {β : Type v} (tag : Tag β) : Tag β :=
  { lhs := tag.rhs, rhs := tag.lhs }


--Even if two trees are shaped differently, 
-- we treat them as equivalent if they store the same key-value pairs in order.
def Tree.toList {β : Type v} (t : Tree β) : List (Nat × β) :=
  match t with
  | .leaf => []
  | .node l k v r => l.toList ++ [(k, v)] ++ r.toList

def treesEqual {β : Type v} [BEq β] (t₁ t₂ : Tree β) : Bool :=
  t₁.toList == t₂.toList

def Transitivity {β : Type v} [BEq β] (t₁ t₂ : Tag β) : Option (Tag β) :=
  if treesEqual t₁.rhs t₂.lhs then
    some { lhs := t₁.lhs, rhs := t₂.rhs }
  else
    none

inductive Derivable {β : Type v} : Tag β → Prop where
  | identity (t : Tree β) :
      Derivable { lhs := t, rhs := t }

  | symmetry {t : Tag β} :
      Derivable t →
      Derivable { lhs := t.rhs, rhs := t.lhs }

  | transitivity {t₁ t₂ : Tag β} :
      Derivable t₁ →
      Derivable t₂ →
      t₁.rhs.toList = t₂.lhs.toList →  -- semantic equality
      Derivable { lhs := t₁.lhs, rhs := t₂.rhs }


def makeTag {β : Type v} [BEq β] (x y : Tree β) : Option (Tag β) :=
  let t₁ := Identity x
  let t₂ := Identity y

  match Transitivity t₁ t₂ with
  | some tag => some tag
  | none =>
    let t₂_sym := Symmetry t₂
    Transitivity t₁ t₂_sym


-- prove this: every derivable tag was built using identity, symmetry, or transitivity
theorem soundness {β : Type v} {t : Tag β} (h : Derivable t) :
  -- Either: the tag is from identity 
  (∃ x, t = Tag.mk x x) ∨
  -- or the tag is from symmetry
  (∃ t', Derivable t' ∧ t = Tag.mk t'.rhs t'.lhs) ∨
  -- or the tag is from transitivity of two derivable tags 
  (∃ t₁ t₂,
    Derivable t₁ ∧ Derivable t₂ ∧
    t₁.rhs.toList = t₂.lhs.toList ∧
    t = Tag.mk t₁.lhs t₂.rhs) :=
by
  -- case split 
  cases h with

  | identity x =>
    -- Case 1: `t = Tag.mk x x` from identity rule
    exact Or.inl ⟨x, rfl⟩

  | symmetry h' =>
    -- Case 2: `t = Tag.mk t'.rhs t'.lhs`, and `t'` is derivable
    exact Or.inr (Or.inl ⟨_, h', rfl⟩)

  | transitivity h₁ h₂ eq =>
    -- Case 3: `t = Tag.mk t₁.lhs t₂.rhs` where t₁ and t₂ are derivable, and their boundary matches
    -- We don't need explicit `t₁` and `t₂`, Lean infers them from the constructor
    exact Or.inr (Or.inr ⟨_, _, h₁, h₂, eq, rfl⟩)

-- proves that all tags, if constructed by identitty/symmetry/transitivity, are derivable
theorem partial_completeness {β : Type v} :
  ∀ (t : Tag β),
    (∃ x, t = Tag.mk x x) ∨
    ((∃ t', Derivable t' ∧ t = Tag.mk t'.rhs t'.lhs) ∨
     (∃ t₁ t₂,
       Derivable t₁ ∧ Derivable t₂ ∧
       t₁.rhs.toList = t₂.lhs.toList ∧
       t = Tag.mk t₁.lhs t₂.rhs)) →
    Derivable t :=
by
  intros t h
  -- First split the outermost ∨
  match h with
  | Or.inl ⟨x, hx⟩ =>
      rw [hx]
      exact Derivable.identity x

  | Or.inr (Or.inl ⟨t', d, hx⟩) =>
      rw [hx]
      exact Derivable.symmetry d

  | Or.inr (Or.inr ⟨t₁, t₂, d₁, d₂, eq, hx⟩) =>
      rw [hx]
      exact Derivable.transitivity d₁ d₂ eq


theorem not_derivable_if_not_constructible {β : Type v} (t : Tag β) :
  ¬ (∃ x, t = Tag.mk x x) ∧
  ¬ (∃ t', Derivable t' ∧ t = Tag.mk t'.rhs t'.lhs) ∧
  ¬ (∃ t₁ t₂,
       Derivable t₁ ∧ Derivable t₂ ∧
       Tree.toList t₁.rhs = Tree.toList t₂.lhs ∧
       t = Tag.mk t₁.lhs t₂.rhs) →
  ¬ Derivable t := by
  intro contra
  intro h_deriv
  -- get the disjunction from soundness
  have disj := soundness h_deriv
  -- destruct the disjunction and contradict each case
  match disj, contra with
  | .inl ⟨x, eq⟩, ⟨h₁, _, _⟩ => exact h₁ ⟨x, eq⟩
  | .inr (.inl ⟨t', d, eq⟩), ⟨_, h₂, _⟩ => exact h₂ ⟨t', d, eq⟩
  | .inr (.inr ⟨t₁, t₂, d₁, d₂, eq₁, eq₂⟩), ⟨_, _, h₃⟩ =>
      exact h₃ ⟨t₁, t₂, d₁, d₂, eq₁, eq₂⟩

--some test cases for transitivity function
def tree1 : Tree String :=
  .node .leaf 1 "a" .leaf

def tree2 : Tree String :=
  .node .leaf 1 "a" .leaf

def tree3 : Tree String :=
  .node (.node .leaf 0 "x" .leaf) 1 "a" .leaf
    -- same key "1" "a" in-order, but additional "0" "x" = not equal

#eval Transitivity { lhs := tree1, rhs := tree2 } { lhs := tree2, rhs := tree3 }
-- some (tree1, tree3)

#eval Transitivity { lhs := tree1, rhs := tree1 } { lhs := tree3, rhs := tree1 }
-- none

--some test cases for makeTag function
def t1 : Tree String :=
  .node .leaf 1 "a" .leaf

def t2 : Tree String :=
  .node .leaf 1 "a" .leaf  -- same structure as t1

def t3 : Tree String :=
  .node (.node .leaf 0 "x" .leaf) 1 "a" .leaf  -- different shape, same key/value "1 a"

def t4 : Tree String :=
  .node .leaf 2 "b" .leaf  -- totally different

#eval makeTag t1 t1
-- Expected: some { lhs := t1, rhs := t1 } (Identity case)

#eval makeTag t1 t2
-- Expected: some { lhs := t1, rhs := t2 } (Transitivity case — same structure and toList)

#eval makeTag t1 t3
-- Expected: some { lhs := t1, rhs := t3 } (Transitivity via toList equality — same data, different shape)

#eval makeTag t1 t4
-- Expected: none (Different keys/values, should fail both direct and symmetric transitivity)



-- PLEASE IGNORE THE CODE BELOW: still under development and experiments
-- prove some adversarial scenarios: a tag where thee lhs=tree1 and rhs=tree3,
-- so clearly bad tag doesn't obey identity function  
def badTag : Tag String :=
  Tag.mk tree1 tree3


theorem badTag_not_identity :badTag.rhs.toList ≠ badTag.lhs.toList := by
    decide



theorem badTag_not_constructible :
  ¬ (
    (∃ x, badTag = ⟨x, x⟩) ∨
    (∃ t', Derivable t' ∧ badTag = ⟨t'.rhs, t'.lhs⟩) ∨
    (∃ t₁ t₂, Derivable t₁ ∧ Derivable t₂ ∧
      t₁.rhs.toList = t₂.lhs.toList ∧
      badTag = ⟨t₁.lhs, t₂.rhs⟩)
  ) := by
  intro h
  unfold badTag at h
  match h with
  | .inl ⟨x, h_eq⟩ =>
    let lhs_eq := congrArg Tag.lhs h_eq
    let rhs_eq := congrArg Tag.rhs h_eq
    have eq : tree1.toList = tree3.toList :=
      (congrArg Tree.toList lhs_eq).trans (congrArg Tree.toList rhs_eq).symm
    have neq : tree1.toList ≠ tree3.toList := by decide
    exact neq eq

  -- Case 2: Symmetry
  | .inr (.inl ⟨t', _, h_eq⟩) =>
    sorry 

  -- Case 3: Transitivity
  | .inr (.inr ⟨t₁, t₂, _, _, _, h_eq⟩) =>
    sorry 
