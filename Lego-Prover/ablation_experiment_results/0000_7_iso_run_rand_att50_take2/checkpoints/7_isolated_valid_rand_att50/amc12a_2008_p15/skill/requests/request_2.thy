lemma power_mod_cycle:
  fixes a :: nat
  assumes "a > 0"
  shows "((a^n) mod m) = (a^(n mod φ(m))) mod m"