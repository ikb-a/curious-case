lemma power_mod_cycle:
  fixes a :: nat and n :: nat
  assumes "a > 0"
  shows "(\<forall>k. (a^k) mod m = (a^(k mod cycle_length)) mod m)"