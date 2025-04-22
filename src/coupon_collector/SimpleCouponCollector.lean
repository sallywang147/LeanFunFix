-- This module serves as the root of the `CouponCollector` library.
-- Import modules here that should be built as part of the library.
-- import Paperproof --tool to visualize proofs (I recommend to our group)

/-
Revised implementation following Monday's meeting
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



/-------------------------------------------------------------------- 
valid/true inputs (tags) and outputs (tags) below

pre: all tag inputs are true; 
post: all tag outputs are true; 

true tag: lhs == rhs 
-- pre-condition: list [0, 1, 2 tags], just the tag input t: lhs == rhs 
-- post: [0 1 tags] after we apply the function 
-- post: we want to add a separate lean equal condition for post condition, because we 
-- want to use it to assert post condition holds
----------------------------------------------------------------------/

/- -----------------------------------------------------------------------
Lean distiguishes == v.s. =
functionA==functionB cannot be true, even if the output is the same; 
But functionA=functionB can be true in Lean if the output is equal; 
we use =, because our prop doesn't have to be booleann equality. 
x==y is the same as BEq.beq x y
--------------------------------------------------------------------------/

def pre_condition : List Tag → Prop
  | [] => True
  | [t] => t.lhs == t.rhs
  | [t₁, t₂] =>
      t₁.rhs == t₂.lhs ∧ t₁.lhs == t₁.rhs ∧ t₂.lhs == t₂.rhs
  | _ => False  -- only allow 0, 1, or 2 tags


def post_condition: List Tag → Prop 
  | [] => True
  | [out_t] => out_t.lhs == out_t.rhs
  | _ => False


axiom UInt8.eq_of_beq :
  ∀ (a b : UInt8), (a == b) = true → a = b

theorem apply_coupon_collector_correctness_proof :
  ∀ (ts : List Tag), ∀ (x : UInt8),
    pre_condition ts →
    ∃ r t, apply_coupon_collector r = some t ∧ post_condition [t]
  := by
  intros ts x h
  cases ts with
  | nil =>
      -- case ts = []
      let r : Request := Request.Identity x
      let t : Tag := { lhs := x, rhs := x }
      apply Exists.intro r
      apply Exists.intro t
      constructor
      · rfl
      · simp [post_condition]
        rfl

  | cons t₁ rest =>
    cases rest with
    | nil =>
      -- case ts = [t₁]
      have h_eq : (t₁.lhs == t₁.rhs) = true := h
      have t₁_eq : t₁.lhs = t₁.rhs := UInt8.eq_of_beq t₁.lhs t₁.rhs h_eq
      let r := Request.Symmetry t₁
      let t : Tag := { lhs := t₁.rhs, rhs := t₁.lhs }
      apply Exists.intro r
      apply Exists.intro t
      constructor
      · simp [apply_coupon_collector]
        rfl
      · simp [post_condition]
        exact Eq.symm (t₁_eq)

    | cons t₂ tail =>
      cases tail with
      | nil =>
        -- case ts = [t₁, t₂]
        rcases h with ⟨h_join, h₁, h₂⟩
        -- convert boolean equalities to propositional
        have h_eq : t₁.rhs = t₂.lhs := UInt8.eq_of_beq t₁.rhs t₂.lhs h_join
        have h₁_eq : t₁.lhs = t₁.rhs := UInt8.eq_of_beq t₁.lhs t₁.rhs h₁
        have h₂_eq : t₂.lhs = t₂.rhs := UInt8.eq_of_beq t₂.lhs t₂.rhs h₂

        let r := Request.Transitivity (t₁, t₂)
        let t : Tag := { lhs := t₁.lhs, rhs := t₂.rhs }

        apply Exists.intro r
        apply Exists.intro t
        constructor
        have expected_eq : apply_coupon_collector r = some t := by
          -- explicitly evaluate the call
            dsimp [apply_coupon_collector]
            -- apply the if-branch since h_eq is propositional
            simp [h_eq]         
        exact expected_eq
        · simp [post_condition]
          calc
            t.lhs = t₁.lhs := rfl
            _     = t₁.rhs := h₁_eq
            _     = t₂.lhs := h_eq
            _     = t₂.rhs := h₂_eq
            _     = t.rhs := rfl

      | cons _ _ =>
        contradiction




/-----------------
Some tests below: 
------------------/
-- We can write arbitrary code in lean, but it will not satisfy the pre-conditions 
def evilTag (x : UInt8) : Tag := { lhs := x, rhs := 50 }

-- now the evilTag will not create a tag satisfying either of our pre-conditions

pre_condition r (evilTag x) x


-- completeness by proving the converse: if not valid tags/requests -> apply returns no