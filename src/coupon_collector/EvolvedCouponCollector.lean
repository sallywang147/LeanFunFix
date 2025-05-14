--import Paperproof
/-
think tags: next, next step

for all tags t, for all store, if inserting a key,for all the 
equuivalence tags hold 

next step: any modification to KVStore should not break the equivalence relation 
-/
-- each key is String type for now

structure Tag where
  lhs : String 
  rhs : String
deriving Repr, BEq, DecidableEq


structure KVStore where 
  mapping : String → Option Nat ⊕ Tag -- Nat (a blob) or a Tag 


-- same request,apply_coupon_collector functions below: 
 inductive Request --exposed to user
 | Reflexivity : String → Request -- changed needed
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
def KVStore.issue_equivalence_tag (store : KVStore) (lhs rhs : String) : Option Tag :=
  match store.mapping lhs, store.mapping rhs with
  | Sum.inl (some v₁), Sum.inl (some v₂) =>
    if v₁ == v₂ then some { lhs := lhs, rhs := rhs } else none
  | _, _ => none

-- we don't want to insert a new key with same name as existing key but points to a diff value
def KVStore.insert (store : KVStore) (key : String) (val : Nat) : Option KVStore := 
  match store.mapping key with
  | Sum.inl none => 
      -- key is empty, so we insert new value
      some {
        mapping := fun k =>
          if k = key then Sum.inl (some val) else store.mapping k
      }
  | _ =>
      -- key already exists, so insertion is rejected
      none

-- we don't want KVStore to delete a key if the key is still pointing to the value 
-- return an updated store after deletion 
def KVStore.delete (store : KVStore) (key : String) : Option KVStore :=
  match store.mapping key with
  | Sum.inl (some _) =>
      -- the key has a Nat value → delete it, and clean up related tags
      let updated := {
        mapping := λ k =>
          if k = key then Sum.inl none
          else
            match store.mapping k with
            | Sum.inr t =>
              -- if tag contains the deleted key, invalidate it
              if t.lhs = key ∨ t.rhs = key then Sum.inl none
              else Sum.inr t
            | other => other
      }
      some updated
  | _ =>
      -- do not delete if key has no Nat value or is a Tag
      store

def KVStore.all_tag_true (store : KVStore) (ts: List Tag) : Bool :=
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

/-
For any operation that alters the store, and for any tag, and for any store, 
if the tag is true relative to the store before the request is executed, 
it will also be true afterwards.
-/
      
theorem soundness_proof :
  ∀ (m : KVStore) (t : Tag) (ts : List Tag) (key key₁ key₂: String) (val : Nat) (m' : KVStore),
    m.all_tag_true ts = true ∧ 
    (KVStore.insert m key val = some m' ∨ KVStore.delete m key = some m' ∨ 
     KVStore.issue_equivalence_tag m key₁ key₂ = t) →
    m'.all_tag_true ts = true := by sorry 

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