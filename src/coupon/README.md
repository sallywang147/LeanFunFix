## Lean Proofs 
This folder contains four levels of lean proofs: i) with concrete numbers; ii) abstract away concrete numbers by variables; iii) a simple tag system; iv) a small proof on the checkNumber function

### Basic Proof on Concrete Values

The [basic.lean](https://github.com/sallywang147/LeanFunFix/blob/main/src/coupon/basic.lean) contains a very simple proof on what we've discussed in group meetings: 

suppose we have x = 5, y =x, and z = 6
we prove that x != z always holds true; 

### Slightly More Abstract Proof on Variables 

The [basic_variable_proof](https://github.com/sallywang147/LeanFunFix/blob/main/src/coupon/basic_variable_proof.lean) considers three variables x, y, z with 
assumptions that x == y and x != z. We prove the following propereties: 
1)   x = y ∧ z ≠ x always holds true 
2)   x = z ∨ y = z is not possible


### A Simple Tag System Proof

The [basic_tag_proof.lean](https://github.com/sallywang147/LeanFunFix/blob/main/src/coupon/basic_tag_proof.lean) proves the following properties of a tag system
which we have implemented Identity, Symmetry, and Transitivity functions: 

1.  reflexivity — A tag is always equivalent to itself
2.  symmetry — if t1 is equivalent to t2, then t2 is equivalent to t1
3. transitivity — if t1 ≡ t2 and t2 ≡ t3, then t1 ≡ t3
4.  Two tags are equivalent iff they are equal 
5.  If two tags are not equal, they are not equivalent

### checkNumber Function Proof 

The [simplify_checkNumber_proof.lean](https://github.com/sallywang147/LeanFunFix/blob/main/src/coupon/simplify_checkNumber_proof.lean) proves two properties of the function: 
1.  checkNumber returns true iff input == 42
2.  checkNumber returns false for inputs not equal to 42

### Bonus Learning material

Lean4's [certified type checker](https://lean-lang.org/lean4/doc/examples/tc.lean.html) inspired by Adam Chilapapa's textbook is partiularly relevant to
what we constructed above. 
