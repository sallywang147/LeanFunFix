-- This module serves as the root of the `CouponCollector` library.
-- Import modules here that should be built as part of the library.
-- import Paperproof --tool to visualize proofs (I recommend to our group)

/-
Revised implementatin following Monday's meeting
-/


structure Tag where 
  lhs : UInt8 
  rhs : UInt8 
deriving Repr 


-- Explicit operations user can request (same names as constructors)
inductive Request --exposed to user
| Identity : UInt8 → Request
| Symmetry : Tag → Request
| Transitivity: Tag → Tag → Request --a structure: multi-args

def apply_coupon_collector : Request → Option Tag
| Request.Identity x       => some ({lhs := x, rhs := x})
| Request.Symmetry t       => some ({lhs := t.rhs, rhs := t.lhs})
| Request.Transitivity t₁ t₂ => if t₁.rhs == t₂.lhs then some {lhs := t₁.lhs, rhs := t₂.rhs} else none



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



/- -----------------------------------------------------------------------------
Two ways to implement tag_invariant: check every tag in the Tag list that lhs==rhs

def tag_check (ts : List Tag) : Bool :=
  ts.countP (fun t => t.lhs == t.rhs) == ts.length

From meeting: pre post should be the same 
---------------------------------------------------------------------------------/


-- https://lean-lang.org/functional_programming_in_lean/getting-to-know/conveniences.html
def all_tag_true(ts : List Tag) : Bool := -- inputs/ouputs are always true (lhs == rhs
  ts.all λ t => t.lhs = t.rhs 
 
-- define a member function for request

def request_to_list : Request -> List Tag --helper function 
  | Request.Identity _      => [] 
  | Request.Symmetry t       => [t] 
  | Request.Transitivity t₁ t₂ => [t₁, t₂]


-- should we prove by requests? Name and values 
theorem soundness_proof :
    ∀ (r : Request), --for all user requests
    all_tag_true (request_to_list r)→ -- if the tag inputs to requests are true, it implies that 
    all_tag_true ((apply_coupon_collector r).toList) := --the tag outputs from apply_coupon_collector are true
by
  intros r h
  cases r with
  | Identity x =>   
    simp [request_to_list, all_tag_true,  apply_coupon_collector]


  | Symmetry t =>
    simp [request_to_list, all_tag_true] at h
    -- tag_check [t] = (t.lhs = t.rhs), so we can use h directly
    simp [apply_coupon_collector, all_tag_true]
    -- now the result is [ { lhs := t.rhs, rhs := t.lhs } ]
    -- and we want to prove t.rhs = t.lhs, which is just the symmetry of h
    exact Eq.symm h
    
  | Transitivity t₁ t₂ =>
    simp [request_to_list, all_tag_true] at h
    -- h is: t₁.lhs = t₁.rhs ∧ t₂.lhs = t₂.rhs

    simp [apply_coupon_collector]
    split
    case Transitivity.isTrue h_eq => -- the case where t₁.rhs = t₂.lhs, the "join" succeeds

      simp [Option.toList, all_tag_true]
      -- We now need to prove that the resulting tag {lhs := t₁.lhs, rhs := t₂.rhs} is "true"
      -- that is, (t₁.lhs = t₂.rhs)

      -- From h : t₁.lhs = t₁.rhs ∧ t₂.lhs = t₂.rhs
      -- and h_eq : t₁.rhs = t₂.lhs

      -- So we can prove:
      calc
        t₁.lhs = t₁.rhs := h.left
        _      = t₂.lhs := h_eq
        _      = t₂.rhs := h.right

    case Transitivity.isFalse h_ne =>
      -- the case where t₁.rhs ≠ t₂.lhs, so apply_coupon_collector returns none
      simp [Option.toList]
      -- none.toList = [], and all_tag_true [] is trivially true
      trivial
    

      
    
    
/-----------------
Some tests below: 
------------------/
-- We can write arbitrary code in lean, but it will not satisfy the pre-conditions 
def evilTag (x : UInt8) : Tag := { lhs := x, rhs := 50 }

-- now the evilTag will not create a tag satisfying either of our pre-conditions

pre_condition r (evilTag x) x


-- completeness by proving the converse: if not valid tags/requests -> apply returns no