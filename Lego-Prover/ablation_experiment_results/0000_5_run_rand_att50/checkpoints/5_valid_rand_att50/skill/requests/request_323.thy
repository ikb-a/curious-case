lemma linear_combination_mod:
  fixes a b c d :: nat
  assumes "a ≡ b (mod m)" and "c ≡ d (mod m)"
  shows "k * a + l * c ≡ k * b + l * d (mod m)" for any k l :: nat