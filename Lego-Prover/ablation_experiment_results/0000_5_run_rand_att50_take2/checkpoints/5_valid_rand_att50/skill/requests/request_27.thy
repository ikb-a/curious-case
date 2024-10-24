lemma mod_power_cycle:
  fixes a :: nat
  assumes "a > 0"
  shows "((2^a) mod 10) = (2^(a mod 4)) mod 10"