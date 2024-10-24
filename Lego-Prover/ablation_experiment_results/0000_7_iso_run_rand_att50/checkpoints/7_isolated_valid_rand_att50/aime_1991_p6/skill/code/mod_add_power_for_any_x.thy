lemma mod_add_power_for_any_x:
  fixes x b c n a :: nat
  assumes "x mod n = a" "b > 0" "c > 0" "n > 0"
  shows "((x + b)^c) mod n = ((a + b)^c) mod n"
  using mod_add_power_generalized[of x n a b c] by (smt (verit) assms(1) assms(2) assms(3) assms(4) mod_add_power_generalized)