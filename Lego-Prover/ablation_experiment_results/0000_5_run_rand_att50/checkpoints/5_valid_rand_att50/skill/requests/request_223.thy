lemma mod_add:
  fixes a b c d :: nat
  assumes "a ≡ b mod c"
  shows "a + d ≡ b + d mod c"