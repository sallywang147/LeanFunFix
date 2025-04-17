-- This module serves as the root of the `CouponCollector` library.
-- Import modules here that should be built as part of the library.
-- import Paperproof --tool to visualize proofs (I recommend to our group)

/-
To discuss w/ Keith: do we also want to prove that invalid inputs -> none? 

Valid intputs -> valid outputs would give us soundness. If we also 
have invalid inputs -> none,  this will ensure completeness. 
-/

structure Tag where 
  lhs : UInt8
  rhs : UInt8
deriving Repr 

-- Explicit operations user can request (same names as constructors)
inductive request --exposed to user
| Identity : UInt8 → request
| Symmetry : Tag → request
| Transitivity: Prod Tag Tag → request --a structure: multi-args

def apply_coupon_collector : request → Option Tag
| request.Identity x       => some ({lhs := x, rhs := x})
| request.Symmetry t       => some ({lhs := t.rhs, rhs := t.lhs})
| request.Transitivity (t₁, t₂) => if t₁.rhs == t₂.lhs then some {lhs := t₁.lhs, rhs := t₂.rhs} else none

/--------------------------------------------------------------------
Define class types of valid/true input(requests) and output(tags) below
----------------------------------------------------------------------/

-- we can do case match for validRequest, becase it is one-to-one mapping: request to prop
class ValidRequest (r : request) : Prop where -- valid requests are a type class 
  ok : match r with -- ok is a proof itself: 
                    -- in order to be considered a ValidRequest r, 
                    -- you must be able to prove the condition given by the match expression for r
      -- matching identity to a True prop
       | request.Identity _ => True
       -- matching symmetry to a True prop
       | request.Symmetry _ => True
       -- t₁.rhs = t₂.lhs below  is saying this: Eq (t₁.rhs) (t₂.lhs) : Prop
       | request.Transitivity (t₁, t₂) => t₁.rhs = t₂.lhs

-- we choose to use instance of class type for output because: 
-- t->t is not a unique relation. It's a one-to-many; 
-- A single request type can map to many tag values
-- Also, output maps request->tag->prop: if we use match here, the shape of prop 
-- might lead to very complex proof to ensure type match
class ValidOutput (r : request) (t : Tag) : Prop


/-----------------------------------------------------------------
Define valid output instances to prepare theorem prooving

From output type, we define valid output instances below. It's saying

"Whenever you see this exact shape of r and t, the proposition ValidOutput r t holds"
------------------------------------------------------------------/
-- Identity: must produce (x, x)
instance validOutput_identity (x : UInt8) :
  ValidOutput (request.Identity x) { lhs := x, rhs := x } :=
  ⟨⟩

-- Symmetry: must produce (y, x) from (x, y)
instance validOutput_symmetry (t : Tag) :
  ValidOutput (request.Symmetry t) { lhs := t.rhs, rhs := t.lhs } :=
  ⟨⟩

-- Transitivity: must produce (x, z) from (x, y), (y, z)
instance validOutput_transitivity (t₁ t₂ : Tag) (h : t₁.rhs = t₂.lhs) :
  ValidOutput (request.Transitivity (t₁, t₂)) { lhs := t₁.lhs, rhs := t₂.rhs } := 
  ⟨⟩

/------------------------------------------------------------------------
Functional correctness (soundness) proof of apply_coupon_collector: 

For every request r that is a valid input (ValidRequest r),
there exists a tag t such that:

  1. totality corect: apply_coupon_collector to valid r, it returns some t

  2. semantically correct: t is a correct output for that input
----------------------------------------------------------------------------/
theorem apply_coupon_collector_functionally_correct
  (r : request) [ValidRequest r] :
  ∃ t : Tag,
  apply_coupon_collector r = some t ∧ ValidOutput r t :=
by
  cases r with
  | Identity x =>
      -- we can technically simply these apply stuff by constructor tactic (requiring more debugging than Apply)
      apply Exists.intro { lhs := x, rhs := x } --matchs ∃ in proof statement above 
      apply And.intro -- matches ⋀ in proof statement 
      simp [apply_coupon_collector]
      exact validOutput_identity x  

  | Symmetry t₀ =>
   apply Exists.intro { lhs := t₀.rhs, rhs := t₀.lhs }
   apply And.intro
   simp [apply_coupon_collector]
   exact validOutput_symmetry t₀
  -- Lean 4 does not allow pattern matching with 
  -- parentheses like (t₁, t₂) in | ConstructorName pattern 
  -- We should avoid Transitivity (t₁, t₂) here
  -- we should avoid using have h: ValidRequest.ok due to terrible type mismatch
  | Transitivity pair =>
      apply Exists.intro { lhs := pair.fst.lhs, rhs := pair.snd.rhs }
      apply And.intro
      simp [apply_coupon_collector]
      -- we need the following line to help Lean deduct the right case, 
      -- because we cannot pass Transitivity t₁ t₂ to the cases r match 
      exact ValidRequest.ok (r := request.Transitivity pair)
      exact validOutput_transitivity pair.fst pair.snd (ValidRequest.ok (r := request.Transitivity pair))
  

/-
Test cases, test theorems for coupon collector below 
-/

#eval apply_coupon_collector (request.Identity 5)
#eval apply_coupon_collector (request.Symmetry { lhs := 2, rhs := 50 })
-- some { lhs := 5, rhs := 5 }
def evilTag (x : UInt8) : Tag := { lhs := x, rhs := 50 }




