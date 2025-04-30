/- ----------------------------------------------------------------
We expand SimpleCouponCollector.lean to include Tags of Name (String) ->Value 
-------------------------------------------------------------------/
--import Paperproof
import Std.Data.HashMap 
open Std

/-----------------------------------------------------------------
First way: immutable kv store: 

0. we can have Tag and KVStore in two ways as shown below.
Which one is prefrered, or neither is good? 

We show proofs for both tag and kv_store designs below. 
The second design is at the bottom of the file after we test the first design 

First design: tag only contains the key as String. Value is stored in a different HashMap

    def KVStore (Value : Type) := HashMap String Value

    structure Tag where
      lhs : String
      rhs : String

Fist design example use case: 
def exampleStore : KVStore Nat :=
  (HashMap.empty : KVStore Nat)
    |>.insert "apple" 42
    |>.insert "banana" 42
    |>.insert "carrot" 2
    |>.insert "dog" 3

equivalence tag below
def t₃ : Tag := { lhs := "apple", rhs := "banana" }

-------------------------------------------------------------------/

/- ---------------------------
first tag, kv_store design 
-------------------------------/

-- The global Key-Value Store datastructure: maps Name → Value
def KVStore (Value : Type) := HashMap String Value

-- A Tag points to two Strings (keys only, no values inside)
structure Tag where
  lhs : String --String points to a Value in KVStore
  rhs : String
deriving Repr, BEq, Hashable, Repr, DecidableEq

 inductive Request --exposed to user
 | Identity : String → Request
 | Symmetry : Tag → Request
 | Transitivity: Tag → Tag → Request --a structure: multi-args
 
 def apply_coupon_collector : Request → Option Tag
 | Request.Identity x       => some ({lhs := x, rhs := x})
 | Request.Symmetry t       => some ({lhs := t.rhs, rhs := t.lhs})
 | Request.Transitivity t₁ t₂ => if t₁.rhs == t₂.lhs then some {lhs := t₁.lhs, rhs := t₂.rhs} else none
 

 def request_to_list : Request -> List Tag --helper function 
   | Request.Identity _      => [] 
   | Request.Symmetry t       => [t] 
   | Request.Transitivity t₁ t₂ => [t₁, t₂]


-- user should invoke this fuuction to get an equivalence tag back 
def create_equivalence_tag (store : KVStore Value) [BEq Value] (t : Tag) : Option Tag := 
  if store.get? t.lhs == store.get? t.rhs then
    some {lhs := t.lhs, rhs := t.rhs}
  else
    none 


-- Define "equivalence under store" relation
-- [BEq Value]: to escape synthesis error due to Value being an option, abstract data type
-- "tag truth" requires access to the name=>value store
def all_tag_true (store : KVStore Value) [BEq Value] (ts : List Tag) : Bool :=
  ts.all λ t => 
    if store.get? t.lhs == store.get? t.rhs then -- we care about the underlying value of lhs == rhs
      true
    else
      false

-- modified soudness proof to accomodate the new all_tag_true func
theorem soundness_proof
  {Value : Type} [BEq Value] :
  ∃ (store : KVStore Value),
    ∀ (r : Request),
      all_tag_true store (request_to_list r) →
      all_tag_true store ((apply_coupon_collector r).toList)
  := by
  -- Pick a dummy store
  exists (HashMap.empty : KVStore Value)
  intros r h_pre
  cases r with
  | Identity x =>
      simp [request_to_list, apply_coupon_collector, Option.toList, all_tag_true]
   
  | Symmetry t =>
      simp [request_to_list, apply_coupon_collector, Option.toList, all_tag_true]

  | Transitivity t₁ t₂ =>
      simp [request_to_list, all_tag_true] at h_pre
      --simp at h_pre
      by_cases cond : t₁.rhs == t₂.lhs
      case pos =>
        -- Good case: t₁.rhs == t₂.lhs
        have h_eq : t₁.rhs = t₂.lhs := by
          apply eq_of_beq
          exact cond
        simp [apply_coupon_collector, Option.toList, all_tag_true, cond]
      case neg =>
        simp [apply_coupon_collector, Option.toList, all_tag_true, cond]
  
   
-- some test cases below

def exampleStore : KVStore Nat :=
  (HashMap.empty : KVStore Nat)
    |>.insert "apple" 1
    |>.insert "banana" 1
    |>.insert "carrot" 2
    |>.insert "dog" 3

-- Example Requests
-- tag {banana, apple}
def r₁ : Request := Request.Symmetry { lhs := "apple", rhs := "banana" }

-- tag {apple, banana}
def r₂ : Request := Request.Transitivity { lhs := "apple", rhs := "banana" } { lhs := "banana", rhs := "banana" }

def t₃ : Tag := { lhs := "apple", rhs := "dog" }
#eval all_tag_true exampleStore (request_to_list r₁) -- true
#eval all_tag_true exampleStore (request_to_list r₂) -- true
#eval all_tag_true exampleStore [t₃] -- false
#eval all_tag_true exampleStore ((apply_coupon_collector r₁).toList) -- true
#eval all_tag_true exampleStore ((apply_coupon_collector r₂).toList) -- true

