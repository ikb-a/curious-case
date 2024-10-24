lemma linear_congruence:
  fixes a b m :: nat
  assumes "a ≡ b (mod m)"
  shows "∃k. a = b + k * m"