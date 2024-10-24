lemma check_congruence:
  fixes a b m n :: nat
  assumes "a mod m = b mod m"
  shows "a ≡ b (mod m)"