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
def KVStore.insertKey (store : KVStore) (key : String) (val : Nat) (ts : List Tag) :
KVStore × List Tag :=
  match store.mapping.get? key with
  | none =>
      let updatedMap := store.mapping.insert key val
      ({ mapping := updatedMap }, ts)
  | some _ =>
      (store, ts) -- key already exists → do not overwrite


def KVStore.insertTag (store : KVStore) (key₁ key₂ : String) (ts : List Tag) : 
  KVStore × List Tag :=
  match store.mapping.get? key₁, store.mapping.get? key₂ with
  | some _, some _ =>
      let newTag := { lhs := key₁, rhs := key₂ }
      (store, newTag :: ts)
  | _, _ =>
      (store, ts)

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

def KVStore.deleteTag (store : KVStore) (key₁ key₂ : String) (ts : List Tag) : 
KVStore × List Tag :=
  (store, ts.erase { lhs := key₁, rhs := key₂ })

    
def KVStore.IssueEquivalenceTag (store : KVStore) (key₁ key₂ : String) (ts : List Tag) :
  KVStore × List Tag :=
  match store.mapping.get? key₁, store.mapping.get? key₂ with
  | some v₁, some v₂ =>
    if v₁ == v₂ then
      let tag := { lhs := key₁, rhs := key₂ }
      (store, tag :: ts)
    else
      (store, ts)
  | _, _ => (store, ts)


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
  (ts : List Tag) : KVStore × List Tag :=

  match req with
  | KVStoreRequest.InsertKey key val =>
      store.insertKey key val ts
      

  | KVStoreRequest.InsertTag lhs rhs =>
      store.insertTag lhs rhs ts
  

  | KVStoreRequest.DeleteKey key =>
      store.deleteKey ts key

  | KVStoreRequest.DeleteTag lhs rhs  =>
      store.deleteTag lhs rhs ts

  | KVStoreRequest.IssueEquivalenceTag lhs rhs => 
      store.IssueEquivalenceTag lhs rhs ts


/-
We can also inline the functions like below
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
-/

theorem soundness_proof :
  ∀  (r : KVStoreRequest) (store store': KVStore) (ts ts': List Tag),
    store.all_tag_true ts →
    (store', ts') = apply_KVStore_request r store ts ∧ 
    store'.all_tag_true ts' := by sorry



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
