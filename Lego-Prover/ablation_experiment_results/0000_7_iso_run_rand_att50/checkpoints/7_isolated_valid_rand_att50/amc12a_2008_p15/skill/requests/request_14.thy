lemma mod_10_calculation:
  fixes a :: nat
  assumes "a = 2008^2 + 2^2008"
  shows "a mod 10 = (4 + 6) mod 10"