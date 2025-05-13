--import Paperproof
/-
think tags: next, next step

for all tags t, for all store, if inserting a key,for all the 
equuivalence tags hold 

next step: any modification to KVStore should not break the equivalence relation 
-/
-- each key is String type for now

import Std.Data.HashMap
open Std 

structure Tag where
  lhs : String 
  rhs : String
deriving Repr, BEq, DecidableEq


structure KVStore where 
  mapping : String → Option Nat

-- same request,apply_coupon_collector functions below: 
 inductive Request --exposed to user
 | Reflexivity : String → Request -- changed needed
 | Symmetry : Tag → Request
 | Transitivity: Tag → Tag → Request --a structure: multi-args
 
 -- reflexitivity 
 def apply_coupon_collector : Request → Option Tag
 | Request.Reflexivity x       => some ({lhs := x, rhs := x})
 | Request.Symmetry t       => some ({lhs := t.rhs, rhs := t.lhs})
 | Request.Transitivity t₁ t₂ => if t₁.rhs == t₂.lhs then some {lhs := t₁.lhs, rhs := t₂.rhs} else none
 
-- bypassing coupon collector to get a tag: check lhs rhs == none 
def issue_equivalence_tag (store : KVStore) (lhs rhs : String) : Option Tag :=
  if store.mapping lhs == store.mapping rhs ∧ 
  store.mapping lhs != none then
    some { lhs := lhs, rhs := rhs }
  else
    none

-- we don't want to insert a new key with same name as existing key but points to a diff value
def KVStore.insert (store : KVStore) (key : String) (val : Nat) : Option KVStore := 
  match store.mapping key with 
  -- if inserted key has no existing value, then we insert new kv pair
  | none => some {mapping := λ k => 
              if k == key then some val else store.mapping k }
  -- if inserted kv pair exists in the store, return old store, 
  -- else if the key of the new kv pair points to a conflicting value of an existing key
  -- we also return old store
  | some _ => store

-- we don't want KVStore to delete a key if the key is still pointing to the value 
-- return an updated store after deletion 
def KVStore.delete (store : KVStore) (key : String) : Option KVStore := 
  some {mapping := λ k => 
          if k == key then none else store.mapping k } 

-- implement KVStore by hashmap: 

def insert (m : HashMap String Nat) (key : String) (val : Nat) : 
Option (HashMap String Nat) :=
  if m.contains key then none else some (m.insert key val)

def delete (m : HashMap String Nat) (key : String) : 
HashMap String Nat :=
  m.erase key

def all_tags_value_true (m : HashMap String Nat) (ts : List Tag) : 
Bool :=
  ts.all (λ t => m.get? t.lhs == m.get? t.rhs)

-- tests for HashMap based KVStore: 
def testStore: HashMap String Nat := HashMap.empty.insert "x" 1 
#eval insert testStore "x" 2  -- should return `none`
#eval insert testStore "y" 2  -- should return `some (map with "x" -> 1, "y" -> 2)`


-- coupon collector trusts the authorship 
-- store should be trusted: what is store responsible for? 
-- keys can be inseted/deleted 

def Request.toList : Request -> List Tag
  | Request.Reflexivity _ => []
  | Request.Symmetry t => [t]
  | Request.Transitivity t₁ t₂ => [t₁, t₂]

def all_tag_true (store : KVStore) (ts: List Tag) : Bool :=
  ts.all λ t => store.mapping t.lhs == store.mapping t.rhs -- runtime check 

/-
theorem: for all collection of tags ts, for all stores, for all storage operations, if all equivalence tags ts are true before, 
they are still true afterwards 

Note: we should break down this kvstore to prove for insertion/deletion separately; 
otherwise, the proof will get very complicated and buggy
-/

/-
∀ (m : KVStore) (ts : List Tag) (key : String) (val : Nat) (m' : KVStore)  ≡ 
∀ (m : KVStore) ∀ (ts : List Tag) ∀ (key : String) ∀ (val : Nat) ∀ (m' : KVStore)
Lean interprets: 
 ∀ (x : A) (y : B) (z : C), P x y z the same way as 
 (∀ x : A) → (∀ y : B) → (∀ z : C) → P x y z
  ∀ is the syntatic sugar for dependent type binding
reference: https://github.com/soonhokong/lean-tutorial/blob/master/04_Quantifiers_and_Equality.org

 How do we interpret nested →: A → B →  C: if A then B then C
 reference: https://www.imo.universite-paris-saclay.fr/~patrick.massot/mil/03_Logic.html 


-/
      
theorem insertion_soundness_proof :
  ∀ (m : KVStore) (ts : List Tag) (key : String) (val : Nat) (m' : KVStore),
    all_tag_true m ts = true ∧ 
    KVStore.insert m key val = some m' →
    all_tag_true m' ts = true := by sorry 

--similar header for deletion 
theorem deletion_soundness_proof :
  ∀ (m : KVStore) (ts : List Tag) (key : String) (val : Nat) (m' : KVStore),
    all_tag_true m ts = true ∧ 
    KVStore.delete m key = some m' →
    all_tag_true m' ts = true := by sorry 


theorem soundness_proof : 
  ∀ (r : Request), ∀ (store : KVStore),
    all_tag_true store r.toList  →
    all_tag_true store (Option.toList (apply_coupon_collector r)) := by -- apply_coupon_collector r.toList
  intros r store h 
  cases r with 
    | Reflexivity x => 
      simp [Request.toList, Option.toList, all_tag_true, apply_coupon_collector]
      
    -- h : (store.mapping t.lhs == store.mapping t.rhs) = true
    -- Goal: (store.mapping t.rhs == store.mapping t.lhs) = true
    | Symmetry t => -- symmetry case can be further simplified by congrArg
      simp [Request.toList, all_tag_true] at h
      simp [apply_coupon_collector, Option.toList, all_tag_true]
      cases h₁ : store.mapping t.lhs with
      | none =>
        cases h₂ : store.mapping t.rhs with
        | none =>
          simp [h₁, h₂]
        | some v₁ =>
          simp [h₁, h₂] at h
      | some v₂ =>
        cases h₂ : store.mapping t.rhs with
        | none =>
          simp [h₁, h₂] at h

        | some v₁ =>
          simp [h₁, h₂] at h -- h : (some a == some b) = true ⇒ a = b
          have : v₂ = v₁ := by
            cases h
            rfl
          simp [h₁, h₂, this.symm]
      
    | Transitivity t₁ t₂ =>
        simp [Request.toList, all_tag_true] at h
        cases h with
        | intro h₁ h₂ =>
          cases cond : t₁.rhs == t₂.lhs               
          case false =>
            simp [apply_coupon_collector, cond, Option.toList, all_tag_true]
      
          case true =>
            simp [apply_coupon_collector, cond, Option.toList, all_tag_true]
            -- ∀ x ∈ [a], p x ↔ p a useful for store mapping 
            apply List.forall_mem_singleton.2
            simp at h₁ h₂
            have cond_eq : t₁.rhs = t₂.lhs := of_decide_eq_true cond
            have map_eq : store.mapping t₁.rhs = store.mapping t₂.lhs :=
                -- CongrArg: if we have f a = f b as a goal and we know 
                --a = b, we can use a =b to replace the goal 
                congrArg store.mapping cond_eq
            have h₂' : store.mapping t₁.rhs = store.mapping t₂.rhs :=
               map_eq.trans h₂
            exact h₁.trans h₂'           
            simp [*]
      
         
     
-- some test cases of the KVStore functions above:  
def test_store : KVStore := 
  {mapping := λ key => 
  if key = "a" then some 42
  else if key = "b" then some 42 
  else if key = "c" then some 5
  else if key = "e" then none
  else none}
#eval issue_equivalence_tag test_store "a" "b"
#eval match KVStore.insert test_store "d" 1 with
  | some newStore => newStore.mapping "d"  -- should be 1
  | none => none
#eval match KVStore.delete test_store "b" with
  | some newStore => newStore.mapping "b"  -- should be none
  | none => none