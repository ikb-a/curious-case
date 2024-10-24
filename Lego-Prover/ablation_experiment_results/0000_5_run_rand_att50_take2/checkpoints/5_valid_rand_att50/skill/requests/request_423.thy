lemma mod_10_calculation:
  fixes a :: nat
  assumes "a mod 10 = 8"
  shows "a^2 mod 10 = 4"