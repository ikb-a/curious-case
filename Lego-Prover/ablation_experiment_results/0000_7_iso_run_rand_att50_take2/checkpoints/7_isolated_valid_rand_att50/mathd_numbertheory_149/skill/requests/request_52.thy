lemma mod_add:
  fixes a b c d :: nat
  assumes "a ≡ b mod c" "d > 0"
  shows "a + d ≡ b + d mod c"