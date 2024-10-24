lemma mod_add_power_generalized_with_variables:
  fixes x n a b c :: nat
  assumes "n > 0" "b > 0" "c > 0" "x mod n = a" 
  shows "((x + b)^c) mod n = ((a + b)^c) mod n"
  using mod_add_power_generalized[of x n a b c] by (smt (verit) assms(1) assms(2) assms(3) assms(4) mod_add_power_generalized)