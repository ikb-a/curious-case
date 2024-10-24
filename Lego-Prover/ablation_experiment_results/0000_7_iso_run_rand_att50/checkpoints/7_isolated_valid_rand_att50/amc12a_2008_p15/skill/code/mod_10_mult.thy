lemma mod_10_mult:
  fixes a b :: nat
  shows "(a * b) mod 10 = ((a mod 10) * (b mod 10)) mod 10"
  by (metis mod_mult_eq)