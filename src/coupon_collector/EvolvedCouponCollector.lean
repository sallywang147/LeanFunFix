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
4.store request from any of those three: similar to request
5. proof: all of the three preserve the soundness of the store
-/


-- we don't want to insert a new key with same name as existing key but points to a diff value
-- we only allow key-value insertion, but not direct insertion to the tag list
-- typically, delete followed by an insert
def KVStore.insertKey (store : KVStore) (key : String) (val : Nat) :
KVStore  :=
  match store.mapping[key]? with
  | none =>
      { mapping := store.mapping.insert key val }
  | some _ =>
      store -- key already exists; do not overwrite


/-
comment: In lean HashMap, each key is definitely associated with a value Nat. 
If we want the option that a key might exist but without a value, we need this: 
HashMap String (Option Nat) -- we currently don't do this to keep things incremental
-/
def KVStore.deleteKey (store : KVStore) (key : String) (ts : List Tag) : 
KVStore :=
  match store.mapping.getKey? key with
  | none => store -- key not found
  | some _ =>
      --not erase the key if any of the tags referring to that key exists
      if ts.any (λ t => t.lhs = key ∧ t.rhs = key) then store
      else { mapping := store.mapping.erase key }

    
def KVStore.issueEquivalenceTag (store : KVStore) (key₁ key₂ : String) : Option Tag :=
  match store.mapping.get? key₁, store.mapping.get? key₂ with
  | some v₁, some v₂ =>
    if v₁ == v₂ then
       some { lhs := key₁, rhs := key₂ }     
    else none
  | _, _ => none


def KVStore.all_tag_true (store : KVStore)(ts : List Tag) : Bool :=
  ts.all λ t => store.mapping.get? t.lhs == store.mapping.get? t.rhs


inductive KVStoreRequest
| InsertKey : String → Nat → KVStoreRequest
| DeleteKey : String → List Tag → KVStoreRequest
| IssueEquivalenceTag : String → String → KVStoreRequest


def apply_KVStore_request
  (req : KVStoreRequest)
  (store : KVStore)
  : KVStore ⊕ Option Tag :=

  match req with
  | KVStoreRequest.InsertKey key val =>
     Sum.inl (store.insertKey key val)
             
  
  | KVStoreRequest.DeleteKey key ts =>
      Sum.inl (store.deleteKey key ts)

  | KVStoreRequest.IssueEquivalenceTag lhs rhs  => 
      Sum.inr (store.issueEquivalenceTag lhs rhs)


-- all tags are true relatively to the store, including the new tag if there is one 
theorem soundness_proof :
  ∀ (r : KVStoreRequest) (store : KVStore) (ts : List Tag),
    store.all_tag_true ts →
    match apply_KVStore_request r store with
    | Sum.inl store' => store'.all_tag_true ts
    | Sum.inr (some t) => store.all_tag_true (t :: ts)
    | Sum.inr none => store.all_tag_true ts := by
    intros r store ts h_all
    cases r with
    | InsertKey key val =>
      -- insertKey only adds a new key, never modifies existing ones
      simp [apply_KVStore_request, KVStore.insertKey]
      split
      case h_1 =>
        -- Case: store.mapping[key]? = none, key is inserted
        simp [KVStore.all_tag_true] at h_all ⊢
        induction ts with
        | nil => simp
        | cons t ts ih =>
          simp at h_all
          cases h_all with
          | intro h_head h_tail =>
            simp
            -- goal: inserted mapping still gives same result for this tag
            let inserted := store.mapping.insert key val
            by_cases h_lhs : t.lhs = key
            case pos => sorry
            case neg => sorry

       
            
            
        
    | DeleteKey key taglist =>
        sorry 

    | IssueEquivalenceTag lhs rhs =>
      sorry
  
 
   



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
