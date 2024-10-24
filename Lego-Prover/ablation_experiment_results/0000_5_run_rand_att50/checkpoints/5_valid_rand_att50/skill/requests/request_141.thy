lemma modulo_squared_equivalence_4:
  fixes a b :: int
  assumes "b = a mod 4"
  shows "a^2 mod 4 = b^2 mod 4"