lemma square_mod_4_1_3:
  fixes a :: int
  assumes "a mod 4 = 1 ∨ a mod 4 = 3"
  shows "a^2 mod 4 = 1"