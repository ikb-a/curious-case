lemma mod_simplification:
  fixes a b :: int
  assumes "a ≡ b (mod n)"
  shows "a mod n = b mod n"