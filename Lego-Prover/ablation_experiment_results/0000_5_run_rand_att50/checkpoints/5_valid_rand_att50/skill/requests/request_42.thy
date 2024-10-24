lemma mod_power_cycle:
  fixes a :: nat
  assumes "a > 0"
  shows "(\<forall>n. a^n mod m = a^(n mod cycle_length) mod m)"