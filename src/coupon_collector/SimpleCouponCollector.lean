-- This module serves as the root of the `CouponCollector` library.
-- Import modules here that should be built as part of the library.
-- import Paperproof --tool to visualize proofs (I recommend to our group)

/-
To discuss w/ Keith: 
0. --are the following definitions of truth shaky? 
    - true tag inputs (only tags created by apply_coupon_collector AND requests are valid) 
      a valid identity request & uint8 x;
      a valid symmety rerquest & a valid tag t₁(x, y) from apply_coupon_collector; - enforcing x ≡ y or not? 
      a valid transitivity request & valid tags t₁(x, y), t₂(y,z) from apply_coupon_collector;

    - Alternatively, if we we want to simplify things, we just define true tags as tags created by 
  apply_coupon_collector function only and smiply use true tags as a pre-condition

  We prove pre/post conditions hold in two theorems due two slightly different pre-conditions as
  written above. 

   - true tag outputs: 
      if (a valid identity request & uint8 x) => t(x, x);
      if (a valid symmety rerquest & t₁(x, y)) => t₁'(y, x);
      if (a valid transitivity request & t₁(x, y), t₂(y,z)) => t₃(x, z);
Note: Lean does not have hoare logic pre/post as in Rocq, so we implement them by Lean function in house

1. do we also want to prove that invalid inputs -> none? I already did...
Valid intputs -> valid outputs would give us soundness. If we also 
have invalid inputs -> none,  this should ensure completeness. 

2. Currently, we can have an input tag like {2, 3}, and submit a request by symmetry, we can end up with {3, 2}
Do wee want that? Or should we enforce all tags have two equivalent fields, i.e. {2≡2} {x≡y} where x==y
such that it's impossible to have {2, 3}, only possible to have {2, 2} or {3, 3}

-/
set_option trace.split.failure true

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

pre: all tag inputs are true; 
post: all tag outputs are true; 
----------------------------------------------------------------------/
def valid_request : Request → Prop --helper definition used in pre_condition later on 
| Request.Identity _ => True
| Request.Symmetry _ => True   -- any tag is fine for now, because we will enforce tag validity in pre
| Request.Transitivity (t₁, t₂) => t₁.rhs = t₂.lhs


/-------------------------------------------------------------------
pre-conditon: true tags from apply_coupon_collector function AND rrequests are valid 
--------------------------------------------------------------------/

def pre_condition : Pre Request Tag UInt8 :=
  fun r t x =>
    valid_request r ∧
    apply_coupon_collector r = some t ∧
    match r with
    | Request.Identity y => x = y ∧ t.lhs = y ∧ t.rhs = y
    | Request.Symmetry t₁ => t.lhs = t₁.rhs ∧ t.rhs = t₁.lhs
    | Request.Transitivity (t₁, t₂) =>
        t₁.rhs = t₂.lhs ∧ t.lhs = t₁.lhs ∧ t.rhs = t₂.rhs

/-----------------------------------------------------------
post-condition (the guarantee we want from our function)
 the tag t must reflect the logical semantics of the request:
    for Identity: t = (x, x) and matches request input y
    for Symmetry: t = Symmetry(t₁)
    for Transitivity: t = (t₁.lhs, t₂.rhs) if joinable
-----------------------------------------------------------------/

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

/-------------------------------------------------------------------
pre-conditon: true tags from apply_coupon_collector function 

post-condition (the guarantee we want from our function)
 the tag t must reflect the logical semantics of the request:
    for Identity: t = (x, x) and matches request input y
    for Symmetry: t = Symmetry(t₁)
    for Transitivity: t = (t₁.lhs, t₂.rhs) if joinable
--------------------------------------------------------------------/

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
        --rfl -- try this out: it's a very frequent bug we'll encounter in Lean4 
        exact ⟨valid, rfl⟩ -- learned lesson: this line solves a very pesky bug on shape mismatch 

    rw [h] at applied
    injection applied with h_eq
    subst h_eq

    exact ⟨Request.Transitivity (t₁, t₂), t₁.lhs, ⟨valid, ⟨rfl, rfl⟩⟩⟩


/-----------------
Some tests below: 
------------------/
-- We can write arbitrary code in lean, but it will not satisfy the pre-conditions 
def evilTag (x : UInt8) : Tag := { lhs := x, rhs := 50 }

-- now the evilTag will not create a tag satisfying either of our pre-conditions
true_tag (evilTag 5) 
pre_condition r (evilTag x) x


-- completeness by proving the converse: if not valid tags/requests -> apply returns none
theorem non_true_tag_means_none :
  ∀ t,
    ¬ true_tag t →
    ∀ r, apply_coupon_collector r ≠ some t :=
by
  intros t h_not_true r h_some
  apply h_not_true
  -- Prove: true_tag t := ∃ r, valid_request r ∧ apply_coupon_collector r = some t
  exists r  -- supply the request r first
  constructor
  · -- valid_request r
    cases r with
    | Identity _ => trivial
    | Symmetry _ => trivial
    | Transitivity pair =>
        let t₁ := pair.fst
        let t₂ := pair.snd
        simp [valid_request]
        simp [apply_coupon_collector] at h_some
        -- apply_coupon_collector returns some t if t₁.rhs = t₂.lhs
        -- and t = { lhs := t₁.lhs, rhs := t₂.rhs }
        -- so we destruct the conjunction
        cases h_some with
        | intro h_eq_rhs h_eq_tag =>
            exact h_eq_rhs
  · exact h_some