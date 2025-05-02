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
 

def Request.toList : Request -> List Tag
  | Request.Identity _ => []
  | Request.Symmetry t => [t]
  | Request.Transitivity t₁ t₂ => [t₁, t₂]

def all_tag_true (store : KVStore) (ts: List Tag) : Bool :=
  ts.all λ t => store.mapping t.lhs == store.mapping t.rhs


theorem soundness_proof : 
  ∀ (r : Request), ∀ (store : KVStore),
    all_tag_true store r.toList  →
    all_tag_true store (Option.toList (apply_coupon_collector r)) := by
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
      
         
     
  