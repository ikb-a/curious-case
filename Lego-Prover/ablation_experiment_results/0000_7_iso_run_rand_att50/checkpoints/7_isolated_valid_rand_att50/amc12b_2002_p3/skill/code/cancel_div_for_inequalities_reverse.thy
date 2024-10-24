lemma cancel_div_for_inequalities_reverse:
  fixes x a b c :: real
  assumes "x > 0" "a * x + b < c * x" 
  shows "a + b / x < c"
proof -
  have "x * (a + b / x) < c * x" using assms(1) assms(2) by sos
  thus ?thesis by (metis add.commute add_frac_num assms(1) assms(2) divide_less_eq order_less_le)
qed