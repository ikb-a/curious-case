lemma mod_power_cycle:
  fixes n :: nat
  assumes "n mod 4 = 0"
  shows "2^n mod 10 = 6"