lemma cancel_div_for_inequalities_specific:
  fixes x a b c :: real
  assumes "x > 0" "a + b / x < c"
  shows "x * a + b < c * x"
  using cancel_div_for_inequalities_general[of x a b c] by (metis add.commute add_frac_num assms(1) assms(2) less_numeral_extra(3) mult.commute pos_divide_less_eq)