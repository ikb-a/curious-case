lemma power_mod_cycle:
  fixes a :: nat and n :: nat
  assumes "a > 0"
  shows "((a^n) mod 10) = (a^(n mod 4)) mod 10"