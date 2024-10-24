lemma mod_simplification:
  fixes a b c :: nat
  assumes "a ≡ b mod c"
  shows "a + k * c ≡ b mod c" for any integer k