lemma power_mod_cycle:
  fixes a :: nat
  assumes "a > 0"
  shows "(\<forall>n. a^n mod m = a^(n mod k) mod m)" for some cycle length k