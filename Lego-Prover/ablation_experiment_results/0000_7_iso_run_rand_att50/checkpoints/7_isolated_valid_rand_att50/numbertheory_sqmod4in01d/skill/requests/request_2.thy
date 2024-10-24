lemma mod_equivalence:
  fixes a b :: int
  assumes "a mod 4 = b mod 4"
  shows "a^2 mod 4 = b^2 mod 4"