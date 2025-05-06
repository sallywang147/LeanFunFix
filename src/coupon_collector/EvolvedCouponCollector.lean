--import Paperproof

-- each key is String type for now
structure Tag where
  lhs : String 
  rhs : String
deriving Repr, BEq, DecidableEq


structure KVStore where 
  mapping : String → Option Nat

-- same request,apply_coupon_collector functions below: 
 inductive Request --exposed to user
 | Identity : String → Request
 | Symmetry : Tag → Request
 | Transitivity: Tag → Tag → Request --a structure: multi-args
 
 def apply_coupon_collector : Request → Option Tag
 | Request.Identity x       => some ({lhs := x, rhs := x})
 | Request.Symmetry t       => some ({lhs := t.rhs, rhs := t.lhs})
 | Request.Transitivity t₁ t₂ => if t₁.rhs == t₂.lhs then some {lhs := t₁.lhs, rhs := t₂.rhs} else none
 
/-
Two ways to get an equivalence tag: from Tag struct or from KVStore
Enforcing how KVStore should be updated: only when it doesn't break equivalence tag
-/
-- equivalenceTag function to issue a tag: assuming the keys already exist in the store

-- bypassing coupon collector to get a tag
def issue_equivalence_tag (store : KVStore) (lhs rhs : String) : Option Tag :=
  if store.mapping lhs == store.mapping rhs then
    some { lhs := lhs, rhs := rhs }
  else
    none

-- via coupon collector to get equivalence tag
def Tag.EquivalenceInvariant (store : KVStore)(t : Tag) : Bool := 
  store.mapping t.lhs == store.mapping t.rhs

def request_equivalence_tag (store : KVStore) (r : Request) : Option Tag :=
  match apply_coupon_collector r with
  | some t => if Tag.EquivalenceInvariant store t then some t else none
  | none => none

-- we don't want KVStore to delete a key if the key is still pointing to the value 
-- or inserting a new key with same name as existing key but points to a diff value
def KVStore.insert (store : KVStore) (key : String) (val : Nat) : Bool := 
  match store.mapping key with 
  | none => true
  | some existing_val => existing_val == val 

-- return an updated store after deletion 
def KVStore.delete (store : KVStore) (key : String) : Option KVStore := 
  match store.mapping key with 
  | none => none 
  | some _ => 
      some {
        mapping := λ k => 
          if k == key then none else store.mapping k 
      }

-- some test cases of the functions above:  
def test_store : KVStore := 
  {mapping := λ key => 
  if key = "a" then some 42
  else if key = "b" then some 42 
  else if key = "c" then some 5
  else none}
#eval issue_equivalence_tag test_store "a" "b"
#eval request_equivalence_tag test_store (Request.Identity "a")
#eval request_equivalence_tag test_store (Request.Symmetry {lhs := "a", rhs :="b"})
#eval KVStore.insert test_store "d" 1
#eval match KVStore.delete test_store "b" with
  | some newStore => newStore.mapping "a"  -- should be none
  | none => none
-- coupon collector trusts the authorship 
-- store should be trusted: what is store responsible for? 
-- keys cann be inseted/deleted 

def Request.toList : Request -> List Tag
  | Request.Identity _ => []
  | Request.Symmetry t => [t]
  | Request.Transitivity t₁ t₂ => [t₁, t₂]

def all_tag_true (store : KVStore) (ts: List Tag) : Bool :=
  ts.all λ t => store.mapping t.lhs == store.mapping t.rhs -- runtime check 


theorem soundness_proof : 
  ∀ (r : Request), ∀ (store : KVStore),
    all_tag_true store r.toList  →
    all_tag_true store (Option.toList (apply_coupon_collector r)) := by -- apply_coupon_collector r.toList
  intros r store h 
  cases r with 
    | Identity x => 
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
            apply List.forall_mem_singleton.2
            simp at h₁ h₂
            have cond_eq : t₁.rhs = t₂.lhs := of_decide_eq_true cond
            have map_eq : store.mapping t₁.rhs = store.mapping t₂.lhs :=
                congrArg store.mapping cond_eq
            have h₂' : store.mapping t₁.rhs = store.mapping t₂.rhs :=
               map_eq.trans h₂
            exact h₁.trans h₂'           
            simp [*]
      
         
     
  