lemma mod_power_cycle:
  fixes a :: nat
  assumes "a > 0"
  shows "((a^n) mod m) = ((a^(n mod φ(m))) mod m)"