theorem mod_add_power_special_case_for_7:
  fixes x b c :: nat
  assumes "b > 0" "c > 0" "x mod 7 = 3"
  shows "((x + b)^c) mod 7 = ((3 + b)^c) mod 7"
  using mod_add_power_generalized[of x 7 3 b c] 
  by (smt (verit) assms(1) assms(2) assms(3) mod_add_power_generalized zero_less_numeral)