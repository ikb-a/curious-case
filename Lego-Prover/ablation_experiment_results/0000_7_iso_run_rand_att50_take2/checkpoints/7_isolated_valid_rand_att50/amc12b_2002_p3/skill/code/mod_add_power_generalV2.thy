lemma mod_add_power_general:
  fixes x a b c n :: nat
  assumes "n > 0" "b > 0" "x mod n = a" "c > 0"
  shows "((x + b)^c) mod n = ((a + b)^c) mod n"
  using mod_add_power_multi[of x a b c n] by (smt (verit) assms(1) assms(2) assms(3) assms(4) mod_add_power_multi)