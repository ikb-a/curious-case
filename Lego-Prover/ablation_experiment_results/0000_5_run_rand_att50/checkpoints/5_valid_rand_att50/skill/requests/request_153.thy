lemma mod_square:
  fixes a :: int
  shows "a mod 4 = 0 ⟹ a^2 mod 4 = 0"
  and "a mod 4 = 1 ⟹ a^2 mod 4 = 1"
  and "a mod 4 = 2 ⟹ a^2 mod 4 = 0"
  and "a mod 4 = 3 ⟹ a^2 mod 4 = 1"