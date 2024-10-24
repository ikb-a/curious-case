lemma power_cycle_mod:
  fixes a :: nat
  assumes "a > 0"
  shows "((a^n) mod m) = (a^(n mod cycle_length) mod m)"