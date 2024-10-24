lemma mod_multiply:
  fixes a b m :: nat
  shows "(a * b) mod m = ((a mod m) * (b mod m)) mod m"