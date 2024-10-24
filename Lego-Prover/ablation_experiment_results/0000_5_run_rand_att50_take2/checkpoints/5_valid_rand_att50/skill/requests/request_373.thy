lemma linear_congruence:
  fixes a b c m :: nat
  assumes "a ≡ b mod m" and "c ≡ d mod m"
  shows "(a + c) ≡ (b + d) mod m"