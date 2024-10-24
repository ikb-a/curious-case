lemma linear_congruence:
  fixes a b m :: nat
  assumes "a * x ≡ b mod m"
  shows "x ≡ (b * (inverse a mod m)) mod m"