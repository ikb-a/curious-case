lemma mod_power_cycle:
  fixes a :: nat and n :: nat
  assumes "n > 0"
  shows "a^(n mod k) mod k = a^n mod k"