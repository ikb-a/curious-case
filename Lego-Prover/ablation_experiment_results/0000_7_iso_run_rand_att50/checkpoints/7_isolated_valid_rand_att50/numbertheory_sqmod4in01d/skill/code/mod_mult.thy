lemma mod_mult:
  fixes a b m :: nat
  shows "(a * b) mod m = ((a mod m) * (b mod m)) mod m"
  by (metis mod_mult_eq)