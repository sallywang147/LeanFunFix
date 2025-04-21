/-
Since we are experimenting equivalenceTag proofs in this iteration, 
Request implmentation is shaky, because we're basically asking all tags have to come from 
identity request first, before we can apply symmetry/transitivity 

In this implementation, the true Tags we can have are {x≡y}, {x≡5}, {5≡y}, {5≡5}
Impossible to have {2≡5}
-/

inductive Term where
  | var : String → Term
  | const : UInt8 → Term
  deriving Repr, DecidableEq

structure Tag where --Tag should support symbolic variable and encodes symbolic vars as string 
                    -- Tag considers UInt8 as a constant variable 
  lhs : Term
  rhs : Term
  deriving Repr


inductive Request where  -- might be shaky in this iteration: need refactoring 
  | Identity     : Term → Term → Request
  | Symmetry     : Request → Request -- we want a tag from ientity first to enforce (x≡y) in all tags we have 
  | Transitivity : Request × Request → Request
  deriving Repr



def apply_coupon_collector : Request → Option Tag
  | Request.Identity t1 t2 =>
      if t1 = t2 then
        some { lhs := t1, rhs := t2 }
      else
        match t1, t2 with
        | Term.var _, _ => some { lhs := t1, rhs := t2 }
        | _, Term.var _ => some { lhs := t1, rhs := t2 }
        | Term.const n1, Term.const n2 =>
            if n1 == n2 then some { lhs := t1, rhs := t2 } else none
       
  | Request.Symmetry r =>
      match apply_coupon_collector r with
      | some tag => some { lhs := tag.rhs, rhs := tag.lhs }
      | none => none

  | Request.Transitivity (r1, r2) =>
      match apply_coupon_collector r1, apply_coupon_collector r2 with
      | some t1, some t2 =>
          if t1.rhs = t2.lhs then
            match t1.lhs, t2.rhs with
            | Term.const n1, Term.const n2 =>
                if n1 == n2 then some { lhs := t1.lhs, rhs := t2.rhs } else none
            | _, _ => some { lhs := t1.lhs, rhs := t2.rhs }
          else none
      | _, _ => none

-- {x==5} and {x==y} => {y==5} by eval 
#eval apply_coupon_collector <|
  Request.Transitivity (
    Request.Symmetry (
      Request.Identity (Term.var "x") (Term.var "y")
    ),
    Request.Identity (Term.var "x") (Term.const 5)
  )

-- {x==y} and {y==z} => {x==z} by eval 
#eval apply_coupon_collector <|
  Request.Transitivity (
    Request.Identity (Term.var "x") (Term.var "y"),
    Request.Identity (Term.var "y") (Term.var "z")
  )

--logic predicate: the only we we can have a tag is iva identity/symmetry/trans rules 
inductive Provable : Tag → Prop
  | identity (t : Term) : Provable ⟨t, t⟩
  | symmetry (t : Tag) (h : Provable t) : Provable ⟨t.rhs, t.lhs⟩
  | trans (t1 t2 : Tag) (h1 : Provable t1) (h2 : Provable t2)
          (cond : t1.rhs = t2.lhs) :
      Provable ⟨t1.lhs, t2.rhs⟩

-- prove that {x==5} and {x==y} => {y==5} always holds 
theorem provable_y_eq_5_from_x_eq_5_and_x_eq_y :
  ∀ x y : Term,
    Provable { lhs := x, rhs := Term.const 5 } →
    Provable { lhs := x, rhs := y } →
    Provable { lhs := y, rhs := Term.const 5 } := by
  intros x y hx5 hxy
  let t1 :Tag := { lhs := y, rhs := x }
  let t2 :Tag := { lhs := x, rhs := Term.const 5 }
  apply Provable.trans t1 t2
  · exact Provable.symmetry _ hxy
  · exact hx5
  · rfl  -- shows t1.rhs = t2.lhs = x

-- prove that {x==y} and {y==z} => {x==z} always holds 
theorem provable_x_eq_z_from_x_eq_y_and_y_eq_z :
  ∀ x y z : Term,
    Provable { lhs := x, rhs := y } →
    Provable { lhs := y, rhs := z } →
    Provable { lhs := x, rhs := z } := by
  intros x y z hxy hyz
  let t1 : Tag := { lhs := x, rhs := y }
  let t2 : Tag := { lhs := y, rhs := z }
  apply Provable.trans t1 t2
  · exact hxy
  · exact hyz
  · rfl  -- t1.rhs = y = t2.lhs

-- prove that it's not possible to have tags like {5≡6} in this system
theorem provable_implies_lhs_eq_rhs :
  ∀ t : Tag, Provable t → t.lhs = t.rhs := by
  intro t h
  induction h with
  | identity t => rfl
  | symmetry t' _ ih =>
      -- t = { lhs := t'.rhs, rhs := t'.lhs }
      -- ih : t'.lhs = t'.rhs
      -- Goal: t'.rhs = t'.lhs
      exact Eq.symm ih
  | trans t1 t2 _ _ cond ih1 ih2 =>
      -- Goal: t1.lhs = t2.rhs
      -- Given: t1.rhs = t2.lhs (cond), and
      --        ih1: t1.lhs = t1.rhs
      --        ih2: t2.lhs = t2.rhs
      calc
        t1.lhs = t1.rhs := ih1
        _      = t2.lhs := cond
        _      = t2.rhs := ih2

theorem not_provable_5_eq_6 : ¬ Provable { lhs := Term.const 5, rhs := Term.const 6 } := by
  intro h
  have eq := provable_implies_lhs_eq_rhs _ h
  simp at eq

/--------------------------------------------------------------------------------------
Experimenting different proof strategy for "impossible to have (5≡6)" 
without inductive predicates below 
---------------------------------------------------------------------------------------/
