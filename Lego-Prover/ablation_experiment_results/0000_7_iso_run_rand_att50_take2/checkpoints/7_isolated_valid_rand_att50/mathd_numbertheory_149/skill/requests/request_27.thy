lemma mod_congruence:
  fixes a b m :: nat
  assumes "a mod m = b"
  shows "((c * a) mod m) = ((c * b) mod m)"