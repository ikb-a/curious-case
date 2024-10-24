theorem mod_add_power_special_case_for_11:
  fixes x b c :: nat
  assumes "b > 0" "c > 0" "x mod 11 = 5"
  shows "((x + b)^c) mod 11 = ((5 + b)^c) mod 11"
  using mod_add_power_generalized[of x 11 5 b c]
  by (smt (verit) assms(1) assms(2) assms(3) mod_add_power_generalized zero_less_numeral)