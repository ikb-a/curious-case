lemma mod_power_cycle:
  fixes a :: nat and n :: nat
  assumes "n > 0"
  shows "a^(4 * n) mod 10 = (a^4 mod 10)^n"