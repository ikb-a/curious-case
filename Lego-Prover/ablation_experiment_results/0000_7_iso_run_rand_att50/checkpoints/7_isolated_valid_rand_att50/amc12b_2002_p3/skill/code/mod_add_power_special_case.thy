theorem mod_add_power_special_case:
  fixes x b c :: nat
  assumes "b > 0" "c > 0" "x mod 5 = 2"
  shows "((x + b)^c) mod 5 = ((2 + b)^c) mod 5"
  using mod_add_power_general[of x 5 2 b c] 
  by (smt (verit) assms(1) assms(2) assms(3) mod_add_power_general zero_less_numeral)