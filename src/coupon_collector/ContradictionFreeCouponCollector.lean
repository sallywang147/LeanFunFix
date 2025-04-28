/- ----------------------------------------------------------------
We expand SimpleCouponCollector.lean to include Tags of Name (String) ->Value 
w/out using external key value store data structure 

Qs to discuss with Keith: 
In Zulip comment, Keith mentioned that 
"If we extend the Tags to represent the equivalence of names (instead of values)..."
  0. Can we define the tag to represent both Name and Value like below? How strongly do we
  feel about upholding the assumption in the if condition above (i.e. a tag represent names only)? 
    If we do not want to reference external key-value store, my current thought is that 
     we would need to carry key-value within the tag structure, otherwise, how would we know which values
    the keys refer to? Any thoughts from fellow lab members? 

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
-- Σ dependent type pair documentation: 
-- https://leanprover.github.io/theorem_proving_in_lean/dependent_type_theory.html
structure Tag (Value : Type) where -- I'm unsure if we'd like Tag in this format
  lhs : Σ (Name : String), Value  
  rhs : Σ (Name : String), Value
deriving Repr

-- example use cases below 
def t₁ : Tag Nat :=
  { lhs := ⟨"apple", 42⟩, rhs := ⟨"banana", 3⟩ }

def t₂ : Tag String :=
  { lhs := ⟨"apple", "a"⟩, rhs := ⟨"apple", "b"⟩ }
#eval t₁.lhs.1   -- id = "apple"
#eval t₁.lhs.2   -- value = 42
#eval t₂.rhs.2   -- value = "b"

inductive Request (Value : Type)
  | Identity : String → Value → Request Value
  | Symmetry : Tag Value → Request Value
  | Transitivity : Tag Value → Tag Value → Request Value
deriving Repr

def apply_coupon_collector {Value : Type} [BEq Value] : Request Value → Option (Tag Value)
  | Request.Identity name v =>
      some { lhs := ⟨name, v⟩, rhs := ⟨name, v⟩ }
  | Request.Symmetry t =>
      some { lhs := t.rhs, rhs := t.lhs }
  | Request.Transitivity t₁ t₂ =>
      if t₁.rhs.2 == t₂.lhs.2 then
        some { lhs := t₁.lhs, rhs := t₂.rhs }
      else
        none

def request_to_list {Value : Type} : Request Value → List (Tag Value)
  | Request.Identity _ _ => []
  | Request.Symmetry t => [t]
  | Request.Transitivity t₁ t₂ => [t₁, t₂]



def contradiction_free_tags {Value : Type} [BEq Value] (ts : List (Tag Value)) : Bool :=
  ts.all λ t => t.lhs.2 == t.rhs.2

theorem contradiction_free_preserved
  {Value : Type} [BEq Value] :
  ∀ (r : Request Nat), -- give Request a dummy type: Nat (String is the same)
    contradiction_free_tags (request_to_list r) →
    contradiction_free_tags (apply_coupon_collector r).toList
  := by
  intro r h_pre
  cases r with

  -- Case: Identity
  | Identity name v =>
    simp [request_to_list, contradiction_free_tags, Option.toList, apply_coupon_collector]

  -- Case: Symmetry
  | Symmetry t =>
    simp [request_to_list, apply_coupon_collector, contradiction_free_tags, Option.toList] at h_pre
    simp [apply_coupon_collector, contradiction_free_tags]
    -- Symmetry flips lhs and rhs, but values are still the same
    exact Eq.symm h_pre

  -- Case: Transitivity
  | Transitivity t₁ t₂ =>
    simp [request_to_list, contradiction_free_tags] at h_pre
    cases h_pre with
      | intro h₁ h₂ =>
        by_cases cond : t₁.rhs.2 == t₂.lhs.2
        case pos =>
          have h_eq : t₁.rhs.2 = t₂.lhs.2 := by
            apply eq_of_beq
            exact cond
          simp [apply_coupon_collector, Option.toList, contradiction_free_tags, cond]
          have eq₁ : t₁.lhs.2 = t₁.rhs.2 := h₁
          have eq₂ : t₂.lhs.2 = t₂.rhs.2 := h₂
          calc
            t₁.lhs.2 = t₁.rhs.2 := eq₁
            _ = t₂.lhs.2 := by rw [h_eq]
            _ = t₂.rhs.2 := eq₂
    
        case neg =>
          simp [apply_coupon_collector, Option.toList, contradiction_free_tags, cond]
       
  
          
      
