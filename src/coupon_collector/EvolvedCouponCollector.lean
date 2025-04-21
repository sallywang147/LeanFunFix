inductive Term where
  | var : String → Term
  | const : UInt8 → Term
  deriving Repr, DecidableEq

structure Tag where
  lhs : Term
  rhs : Term
  deriving Repr


inductive Request where
  | Identity     : Term → Term → Request
  | Symmetry     : Request → Request
  | Transitivity : Request × Request → Request
  deriving Repr


def create_equivalenc_tag (t : Term) : Tag :=
  { lhs := t, rhs := t }


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

