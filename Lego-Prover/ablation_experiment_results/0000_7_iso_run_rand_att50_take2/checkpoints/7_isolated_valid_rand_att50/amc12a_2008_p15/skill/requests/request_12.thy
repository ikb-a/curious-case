lemma power_mod_cycle:
  fixes a :: nat and n :: nat
  assumes "a > 0"
  shows "(\<forall>k. (a^k) mod n = (a^(k mod m)) mod n)" for some m