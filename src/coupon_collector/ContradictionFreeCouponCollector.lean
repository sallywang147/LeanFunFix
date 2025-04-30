/- ----------------------------------------------------------------
We expand SimpleCouponCollector.lean to include Tags of Name (String) ->Value 
w/out using external key value store data structure 

  1. Are we okay with the following definitions? Do they seem sketchy to you? 
  
  the "contradiction-free" definition feels very similar to the second design in
  EvolvedCouponCollector.lean: 
  
  Def. as long as the values of lhs and rhs are equal, we consider the tag as an equivalence tag. 
  Examples: 
  t₁= {A->3, B->3} is an equivalence tag, because A and B point to the same value;
  t₂ = {A->3, A->3} is an equivalence tag, because both name and values are equal;
  t₃= {A->3, A->4} is NOT an equivalence tag, because A's value of lhs (3) !=  A's value of rhs (4), even if the names are the same;

  "contradiction-free inputs" definition: a list of equivalence tags
  
   Thus, we can rephrase the proof of "contradition-free inputs => apply_coupon_collector cannot derive contradiction" below: 
   a list of equivalence tags as input => a list of equivalence tags as output form apply_coupon_collector
-------------------------------------------------------------------/
-- import Paperproof

structure Tag where
  lhs : String -- each key is String type for now
  rhs : String
deriving Repr, BEq, Hashable, Repr, DecidableEq

structure KVStore (α : Type) where -- mapping String in 
  mapping : String → Option α
  -- The store defines a partial function from keys (strings) to values (of type α)

-- Lookup function for a tag in the store
def Tag.LookUp {α : Type} (store : KVStore α) (t : Tag) : 
Option (α × α) :=
  match store.mapping t.lhs, store.mapping t.rhs with
  | some v₁, some v₂ => some (v₁, v₂)
  | _, _ => none


-- test case of Tag.LookUp
def testStore : KVStore Nat :=
  { mapping := λ key =>
      if key == "A" then some 20
      else if key == "B" then some 20
      else none }

def testTag : Tag := { lhs := "A", rhs := "B" }

#eval Tag.LookUp testStore testTag
-- Output: some (20, 20)

def Tag.Insert {α : Type} (t : Tag) (v₁ v₂ : α) (s : KVStore α) : 
KVStore α :=
  { mapping := λ key =>
      if key == t.lhs then some v₁
      else if key == t.rhs then some v₂
      else s.mapping key }


-- test cases of Tag.Insert
def baseStore : KVStore Nat :=
  { mapping := λ key => if key == "z" then some 42 else none }

def t : Tag := { lhs := "x", rhs := "y" }

def updatedStore := Tag.Insert t 10 20 baseStore

#eval updatedStore.mapping "x"  -- some 10
#eval updatedStore.mapping "y"  -- some 20
#eval updatedStore.mapping "z"  -- some 42
#eval updatedStore.mapping "w"  -- none


def Tag.Delete {α : Type} (t : Tag) (s : KVStore α) : KVStore α :=
  { mapping := λ key =>
      if key == t.lhs ∨ key == t.rhs then none
      else s.mapping key }

/-
enforcing equivalence invariant of a tag:
lhs->value == rhs -> value, 
where lhs != rhs or lhs == rhs
-/

def Tag.EquivalenceInvariant {α : Type} [BEq α] 
(store : KVStore α) (t : Tag) : Bool :=
  store.mapping t.lhs == store.mapping t.rhs

-- same request,apply_coupon_collector functions below: 
 inductive Request --exposed to user
 | Identity : String → Request
 | Symmetry : Tag → Request
 | Transitivity: Tag → Tag → Request --a structure: multi-args
 
 def apply_coupon_collector : Request → Option Tag
 | Request.Identity x       => some ({lhs := x, rhs := x})
 | Request.Symmetry t       => some ({lhs := t.rhs, rhs := t.lhs})
 | Request.Transitivity t₁ t₂ => if t₁.rhs == t₂.lhs then some {lhs := t₁.lhs, rhs := t₂.rhs} else none
 

def request_to_list : Request → List Tag
  | Request.Identity _ => []
  | Request.Symmetry t => [t]
  | Request.Transitivity t₁ t₂ => [t₁, t₂]


-- all tags uphold the equivalence invariant
def all_tag_true {α : Type} [BEq α] (store : KVStore α) : List Tag → Bool
  | [] => true
  | t :: ts => Tag.EquivalenceInvariant store t && all_tag_true store ts

/-
WARNING: the proof below is still buggy in the second and thrid case
In debugging mode 
-/


theorem soundness_proof
  {α : Type} [BEq α] :
  ∀ (r : Request), ∃ (store : KVStore α),
    all_tag_true store (request_to_list r) →
    all_tag_true store (Option.toList (apply_coupon_collector r)) := by
  intro r
  cases r with
  | Identity x =>
      let store : KVStore α := { mapping := fun _ => none } -- maybe shaky: can we set default store to a dummy none?
      exists store
      intro 
      simp only [request_to_list, all_tag_true, apply_coupon_collector, Option.toList]
      -- Goal is: all_tag_true store [{ lhs := x, rhs := x }] = true
      -- Unfold manually
      show (store.mapping x == store.mapping x) && true = true
      simp
      rfl
    
  | Symmetry t =>
      --let v : α := 
      let store : KVStore α :=
        { mapping := fun _ => none }
      exists store
      intro h
      simp [request_to_list, all_tag_true] at h
      simp [apply_coupon_collector, Option.toList, Tag.EquivalenceInvariant]
      exact Eq.symm h

  | Transitivity t₁ t₂ =>
      let store : KVStore α :=
       { mapping := fun _ => none }
      exists store
      intro h
      simp [request_to_list, all_tag_true] at h
      simp [apply_coupon_collector, Option.toList]
      by_cases cond : t₁.rhs == t₂.lhs 
        · simp [cond]
        simp [Tag.EquivalenceInvariant]
        rfl
       · simp [cond]

