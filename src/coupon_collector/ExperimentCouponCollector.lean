--import Paperproof

structure Tag where 
  lhs : String 
  rhs : String
deriving Repr, BEq, DecidableEq


/-- 
from Hackathon discussion: 
  String->Value: 
    1. Value can be a Nat; 
    2. Value can be a tree (an array of strings/keys)
another way to write k-v store:   
structure KVStore where
  mapping : String → Option (Sum Nat (Array String))

--/ 

structure KVStore where -- key can point to a value or a tree (string array)
  mapping : String → Option (Nat ⊕ Array String)
 

def newStore : KVStore :=
  { mapping := λ key =>
      if key == "a" then some (Sum.inl 42)
      else if key == "b" then some (Sum.inr #["c", "d"])
      else if key == "c" then some (Sum.inl 42)
      else if key == "d" then some (Sum.inl 5)
      else none
  }

-- some test functions 

def getValue (store : KVStore) (key : String) : 
  Option (Nat ⊕ Array String) :=
  store.mapping key


#eval getValue newStore "a"       -- Output: some 42
#eval getValue newStore  "b" 
#eval getValue newStore  "c" 
#eval getValue newStore  "d" 
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
    