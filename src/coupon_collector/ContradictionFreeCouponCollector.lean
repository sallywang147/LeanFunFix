/- ----------------------------------------------------------------
We expand SimpleCouponCollector.lean to include Tags of Name (String) ->Value 
w/out using external key value store data structure 

If we do not want to reference external kv store: 
structure Tag where
  lhs : String -- each key is String type for now
  rhs : String
  equivalence: Bool 
deriving Repr, BEq, Hashable, Repr, DecidableEq

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

structure KVStore where -- mapping String in: object store 
  mapping : String → Option Nat
  -- The store defines a partial function from keys (strings) to values (of type α)

/-
enforcing equivalence invariant of a tag:
lhs->value == rhs -> value, 
where lhs != rhs or lhs == rhs
-/
def Tag.EquivalenceInvariant
(store : KVStore) (t : Tag) : Bool :=
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
 

def Request.toList : Request -> List Tag
  | Request.Identity _ => []
  | Request.Symmetry t => [t]
  | Request.Transitivity t₁ t₂ => [t₁, t₂]


-- all tags uphold the equivalence invariant
def all_tag_true (store : KVStore) (ts: List Tag) : Bool :=
  ts.all λ t => Tag.EquivalenceInvariant store t 

/-
WARNING: the proof below is still buggy in the thrid case
In debugging mode 
-/

/-
a list of equivalence tags as input: 

-/

theorem soundness_proof : 
  ∀ (r : Request), 
   ∀ (store : KVStore),
    all_tag_true store r.toList  →
    all_tag_true store (Option.toList (apply_coupon_collector r)) := by
  intros 
  simp [all_tag_true] at *
 