-- This module serves as the root of the `CouponCollector` library.
-- Import modules here that should be built as part of the library.
-- import Paperproof --tool to visualize proofs (I recommend to our group)

/-
To discuss w/ Keith: 
0. --are the following definitions of truth shaky? 
   - true tag inputs (only tags created by apply_coupon_collector are true) 
      a valid identity request & uint8 x;
      a valid symmety rerquest & t₁(x, y) from apply_coupon_collector; - enforcing x ≡ y or not? 
      a valid transitivity request & t₁(x, y), t₂(y,z) from apply_coupon_collector;
   - true tag outputs: 
      if (a valid identity request & uint8 x) => t(x, x);
      if (a valid symmety rerquest & t₁(x, y)) => t₁'(y, x);
      if (a valid transitivity request & t₁(x, y), t₂(y,z)) => t₃(x, z);
Note: Lean does not have hoare logic pre/post as in Rocq, so we implement them by Lean function in house

1. do we also want to prove that invalid inputs -> none? 
Valid intputs -> valid outputs would give us soundness. If we also 
have invalid inputs -> none,  this should ensure completeness. 

2. Currently, we can have an input tag like {2, 3}, and by symmetry, we can end up with {3, 2}
Do wee want that? Or should we enforce all tags have two equivalent fields, i.e. {2≡2} {x≡y} where x==y
such that it's impossible to have {2, 3}, only possible to have {2, 2} or {3, 3}

-/
structure Tag where 
  lhs : UInt8
  rhs : UInt8
deriving Repr 

-- Explicit operations user can request (same names as constructors)
inductive Request --exposed to user
| Identity : UInt8 → Request
| Symmetry : Tag → Request
| Transitivity: Prod Tag Tag → Request --a structure: multi-args

def apply_coupon_collector : Request → Option Tag
| Request.Identity x       => some ({lhs := x, rhs := x})
| Request.Symmetry t       => some ({lhs := t.rhs, rhs := t.lhs})
| Request.Transitivity (t₁, t₂) => if t₁.rhs == t₂.lhs then some {lhs := t₁.lhs, rhs := t₂.rhs} else none


/- We adapt the Pre, Post from Lean ZulipChat for our purposes: 
 https://leanprover-community.github.io/archive/stream/270676-lean4/topic/Applying.20post.20invariant.20to.20Hoare.20State.20Monad.html
 Hoare logic pre and post invariants
-/
def Pre (α β θ : Type) : Type := α → β → θ  → Prop
def Post (x y z : Type) : Type := x → y → z → Prop


/-------------------------------------------------------------------- 
valid/true inputs (tags) and outputs (tags) below

pre: all tags input are true; 
post: all tags output are true; 
----------------------------------------------------------------------/
def valid_request : Request → Prop
| Request.Identity _ => True
| Request.Symmetry _ => True   -- any tag is fine for now, because true_tag will enforce validity
| Request.Transitivity (t₁, t₂) => t₁.rhs = t₂.lhs


def pre_condition : Pre Request Tag UInt8 :=
  fun r t x =>
    valid_request r ∧
    apply_coupon_collector r = some t ∧
    match r with
    | Request.Identity y => x = y ∧ t.lhs = y ∧ t.rhs = y
    | Request.Symmetry t₁ => t.lhs = t₁.rhs ∧ t.rhs = t₁.lhs
    | Request.Transitivity (t₁, t₂) =>
        t₁.rhs = t₂.lhs ∧ t.lhs = t₁.lhs ∧ t.rhs = t₂.rhs

def post_condition : Post Request Tag UInt8 :=
  fun r t x =>
    match r with
    | Request.Identity y =>
        x = y ∧ t.lhs = y ∧ t.rhs = y

    | Request.Symmetry t₁ =>
        t.lhs = t₁.rhs ∧ t.rhs = t₁.lhs

    | Request.Transitivity (t₁, t₂) =>
        t₁.rhs = t₂.lhs ∧
        t.lhs = t₁.lhs ∧
        t.rhs = t₂.rhs

theorem apply_coupon_collector_correct :
  ∀ r t x,
    pre_condition r t x →
    post_condition r t x :=
by
  intros r t x h
  rcases h with ⟨valid, applied, shape⟩
  -- cases on r to match structure
  cases r with
  | Identity y =>
      simp [post_condition]
      exact shape

  | Symmetry t₁ =>
      simp [post_condition]
      exact shape

  | Transitivity pair =>
      let t₁ := pair.fst
      let t₂ := pair.snd
      simp [post_condition]
      exact shape



def true_tag (t : Tag) : Prop :=
  ∃ r : Request, valid_request r ∧ apply_coupon_collector r = some t


theorem apply_coupon_collector_functionally_correct :
  ∀ (t : Tag), true_tag t → ∃ (r : Request) (x : UInt8), post_condition r t x :=
by
  intros t h
  obtain ⟨r, ⟨valid, applied⟩⟩ := h
  cases r with
  | Identity y =>
      cases applied
      exact ⟨Request.Identity y, y, ⟨rfl, ⟨rfl, rfl⟩⟩⟩

  | Symmetry t₁ =>
      cases applied
      exact ⟨Request.Symmetry t₁, t₁.rhs, ⟨rfl, rfl⟩⟩

  | Transitivity pair =>
    let t₁ := pair.fst
    let t₂ := pair.snd
    let expected : Tag := { lhs := t₁.lhs, rhs := t₂.rhs }

    -- valid : t₁.rhs = t₂.lhs
    -- applied : apply_coupon_collector (Transitivity (t₁, t₂)) = some t

    -- Instead of evaluating apply_coupon_collector, we define what it must return
    -- and use the injectivity of `Option.some`
    have h :
      apply_coupon_collector (Request.Transitivity (t₁, t₂)) = some expected := by
        simp [apply_coupon_collector, valid]
        exact ⟨valid, rfl⟩ -- learned lesson: this line solves a very pesky bug on shape mismatch 

    rw [h] at applied
    injection applied with h_eq
    subst h_eq

    exact ⟨Request.Transitivity (t₁, t₂), t₁.lhs, ⟨valid, ⟨rfl, rfl⟩⟩⟩








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




