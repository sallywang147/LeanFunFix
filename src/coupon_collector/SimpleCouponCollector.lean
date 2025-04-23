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
we use ==, because we want our proposition to guarantee boolean equality on both value and type. 
x==y is the same as BEq.beq x y
--------------------------------------------------------------------------/

def pre_condition : List Tag → Prop
  | [] => True
  | [t] => t.lhs == t.rhs
  | [t₁, t₂] =>
       t₁.lhs == t₁.rhs ∧ t₂.lhs == t₂.rhs
  | _ => False  -- only allow 0, 1, or 2 tags


def post_condition: List Tag → Prop 
  | [] => True
  | [out_t] => out_t.lhs == out_t.rhs
  | _ => False


axiom UInt8.eq_of_beq : -- == (enforcing type equality) in Lean is stronger than = (dooesn't enforce type equality)
  ∀ (a b : UInt8), (a == b) = true → a = b

def request_to_list : Request -> List Tag --helper function for proving pre
  | Request.Identity x       => [{lhs := x, rhs := x}]
  | Request.Symmetry t       => [{lhs := t.lhs, rhs := t.rhs}]
  | Request.Transitivity (t₁, t₂) => [{lhs := t₁.lhs, rhs := t₁.rhs}, 
                                      {lhs := t₂.lhs, rhs := t₂.rhs}]

def option_to_list : Option Tag -> List Tag --helper function for proving post
  | some out_tag => [out_tag]
  | none => []  
 

theorem apply_coupon_collector_correctness_proof :
  ∀ (r : Request),
    pre_condition (request_to_list r) →
    post_condition (option_to_list (apply_coupon_collector r))
  := by
  intro r
  cases r with
  | Identity x =>
    intro _
    simp [apply_coupon_collector, request_to_list, option_to_list, post_condition]

  | Symmetry t =>
    intro h
    -- request_to_list (Symmetry t) = [t], so pre_condition [t] = t.lhs == t.rhs
    have h_eq := UInt8.eq_of_beq t.lhs t.rhs h
    simp [apply_coupon_collector, option_to_list, post_condition]
    -- Result is { lhs := t.rhs, rhs := t.lhs }, need to show lhs == rhs
    -- i.e. t.rhs == t.lhs = true
    rw [h_eq]

  | Transitivity pair =>
    let t₁ := pair.fst
    let t₂ := pair.snd
    intro h
    rcases h with ⟨h₁, h₂⟩

    let h_join : t₁.rhs == t₂.lhs := by
      have h₁_eq := UInt8.eq_of_beq t₁.lhs t₁.rhs h₁
      have h₂_eq := UInt8.eq_of_beq t₂.lhs t₂.rhs  h₂
      --have h_join_eq := UInt8.eq_of_beq _ _ h_join
      exact 
      let t : Tag := { lhs := t₁.lhs, rhs := t₂.rhs }

      apply And.intro
      · simp [apply_coupon_collector, h_join]
      · simp [option_to_list, post_condition]
    rw [h₁_eq, h₂_eq]

    simp [apply_coupon_collector, h_join, option_to_list, post_condition]
    --rfl
  

/-----------------
Some tests below: 
------------------/
-- We can write arbitrary code in lean, but it will not satisfy the pre-conditions 
def evilTag (x : UInt8) : Tag := { lhs := x, rhs := 50 }

-- now the evilTag will not create a tag satisfying either of our pre-conditions

pre_condition r (evilTag x) x


-- completeness by proving the converse: if not valid tags/requests -> apply returns no