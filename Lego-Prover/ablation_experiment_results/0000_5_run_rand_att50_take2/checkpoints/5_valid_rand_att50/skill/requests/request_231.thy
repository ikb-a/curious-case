lemma power_mod_10:
  fixes a :: nat
  assumes "a > 0"
  shows "a^n mod 10 = (a mod 10)^n mod 10"