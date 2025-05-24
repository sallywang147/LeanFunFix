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
  mapping : HashMap String Nat
  deriving Repr

-- same request,apply_coupon_collector functions below: 
 inductive Request --exposed to user
 | Reflexivity : String → Request -- changed needed (double check)
 | Symmetry : Tag → Request
 | Transitivity: Tag → Tag → Request --a structure: multi-args
 
 def Request.toList : Request -> List Tag
  | Request.Reflexivity _ => []
  | Request.Symmetry t => [t]
  | Request.Transitivity t₁ t₂ => [t₁, t₂]

 -- reflexitivity 
 def apply_coupon_collector : Request → Option Tag
 | Request.Reflexivity x       => some ({lhs := x, rhs := x})
 | Request.Symmetry t       => some ({lhs := t.rhs, rhs := t.lhs})
 | Request.Transitivity t₁ t₂ => if t₁.rhs == t₂.lhs then some {lhs := t₁.lhs, rhs := t₂.rhs} else none
 
 -- stores should store the new tag: tags come from issue_equivalence_tag functions or apply_coupon_collector 
-- bypassing coupon collector to get a tag: check lhs rhs == none 

/-
store operations: 

1. add a key to value mapping 
2. delete a key to value mapping 
3. create an equivalence tag: 
4. add a tag to the store
5. delete a tag from the store 
6.store request from any of those five: similar to request
7. proof: all of the fives preserve the soundness of the store
-/


-- we don't want to insert a new key with same name as existing key but points to a diff value
-- we only allow key-value insertion, but not direct insertion to the tag list
def KVStore.insertKey (store : KVStore) (key : String) (val : Nat) : KVStore :=
  match store.mapping.get? key with
  | none =>
      let updatedMap := store.mapping.insert key val
      { mapping := updatedMap }
  | some _ =>
      store  -- key already exists → do not overwrite


def KVStore.insertTag (store : KVStore) (key₁ key₂ : String) (ts : List Tag) : 
  List Tag :=
  match store.mapping.get? key₁, store.mapping.get? key₂ with
  | some _, some _ => -- if key-value pair exists in store
      let newTag := { lhs := key₁, rhs := key₂ } -- create a new tag
      newTag :: ts -- insert to the store
  | _, _ => ts

/-
comment: In lean HashMap, each key is definitely associated with a value Nat. 
If we want the option that a key might exist but without a value, we need this: 
HashMap String (Option Nat) -- we currently don't do this to keep things incremental
-/
def KVStore.deleteKey (store : KVStore) (ts : List Tag) (key : String) : 
KVStore × List Tag :=
  match store.mapping.getKey? key with
  | none => (store , ts) -- key not found: reject deletion
  | some _ =>
      let updatedStore := store.mapping.erase key
      let updatedTagList := ts.filter (λ t => t.lhs ≠ key ∧ t.rhs ≠ key)
      ({ mapping := updatedStore }, updatedTagList)

def KVStore.deleteTag (key₁ key₂ : String) (ts : List Tag) : List Tag :=
  ts.erase { lhs := key₁, rhs := key₂ }
    
def KVStore.issue_equivalence_tag (store : KVStore) (lhs rhs : String) : 
Option Tag :=
  match store.mapping.get? lhs, store.mapping.get? rhs with
  | some v₁, some v₂ =>
    if v₁ == v₂ then
      some { lhs := lhs, rhs := rhs }
    else
      none
  | _, _ => none


def KVStore.all_tag_true (store : KVStore)(ts : List Tag) : Bool :=
  ts.all λ t => store.mapping.get? t.lhs == store.mapping.get? t.rhs


inductive KVStoreRequest
| InsertKey : String → Nat → KVStoreRequest
| InsertTag : String → String → KVStoreRequest
| DeleteKey : String → KVStoreRequest
| DeleteTag : String → String → KVStoreRequest
| IssueEquivalenceTag : String → String → KVStoreRequest


def apply_KVStore_request
  (req : KVStoreRequest)
  (store : KVStore)
  (ts : List Tag) : KVStore × List Tag × Option Tag :=

  match req with
  | KVStoreRequest.InsertKey key val =>
      (store.insertKey key val, ts , none)
      

  | KVStoreRequest.InsertTag lhs rhs =>
      (store, store.insertTag lhs rhs ts , none)
  

  | KVStoreRequest.DeleteKey key =>
      let (updatedStore, updatedTagList) := store.deleteKey ts key
      (updatedStore, updatedTagList, none)

  | KVStoreRequest.DeleteTag lhs rhs =>
      let ts' := KVStore.deleteTag lhs rhs ts
      (store, ts', none)

  | KVStoreRequest.IssueEquivalenceTag lhs rhs =>
      let equivalenceTag := store.issue_equivalence_tag lhs rhs
      (store, ts, equivalenceTag) 



/-
We can also inline the functions like below
-/
def apply_KVStore_request_inline
  (req : KVStoreRequest)
  (store : KVStore)
  (ts : List Tag) : Option (KVStore × List Tag) :=

  match req with
  | KVStoreRequest.InsertKey key val =>
      match store.mapping.get? key with
      | none =>
          let updated := store.mapping.insert key val
          some ({ mapping := updated }, ts)
      | some existing =>
          if existing == val then some (store, ts) else none

  | KVStoreRequest.InsertTag lhs rhs =>
      match store.mapping.get? lhs, store.mapping.get? rhs with
      | some v₁, some v₂ =>
          if v₁ == v₂ then
            let tag := { lhs := lhs, rhs := rhs }
            some (store, tag :: ts)
          else none
      | _, _ => none

  | KVStoreRequest.DeleteKey key =>
      match store.mapping.get? key with
      | none => none
      | some _ =>
          let updatedMap := store.mapping.erase key
          let updatedTags := ts.filter (λ t => t.lhs ≠ key ∧ t.rhs ≠ key)
          some ({ mapping := updatedMap }, updatedTags)

  | KVStoreRequest.DeleteTag lhs rhs =>
      let ts' := ts.erase { lhs := lhs, rhs := rhs }
      some (store, ts')

  | KVStoreRequest.IssueEquivalenceTag lhs rhs =>
      match store.mapping.get? lhs, store.mapping.get? rhs with
      | some v₁, some v₂ =>
          if v₁ == v₂ then
            let tag := { lhs := lhs, rhs := rhs }
            some (store, tag :: ts)
          else none
      | _, _ => none




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

/-
For any operation that alters the store, and for any tag, and for any store, 
if the tag is true relative to the store before the request is executed, 
it will also be true afterwards.
proof1: coucpon collector requests preserve the true tags 
proof2: For any request to the store, storage operations preserve integrity of store: no dangling reference/tagging 
proof3: empty store is good (base case)

-/

/-
request function taking care of this:   (t : Tag) (key key₁ key₂: String) (val : Nat) (m' : KVStore)
-/   
theorem kvstore_soundness_proof :
  ∀ (m : KVStore) (r: StorageRequest) ,
    m.all_tag_true = true ∧ 
    (KVStore.insert m key val = some m' ∨ KVStore.delete m key = some m' ∨ 
     KVStore.issue_equivalence_tag m key₁ key₂ = t) →
    m'.all_tag_true = true := by sorry 


theorem soundness_proof : 
  ∀ (r : Request), ∀ (store : KVStore),
    all_tag_true store r.toList  →
    all_tag_true store (apply_coupon_collector r).toList := by -- apply_coupon_collector r.toList
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