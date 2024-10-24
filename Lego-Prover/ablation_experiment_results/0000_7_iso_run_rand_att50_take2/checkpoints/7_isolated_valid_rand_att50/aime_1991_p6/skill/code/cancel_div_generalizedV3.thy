lemma cancel_div_generalized:
  fixes x a b c :: real
  assumes "x \<noteq> 0" "a + b / x = c"
  shows "c * x - b = a * x"
proof -
  have "c * x - b = (a + b / x) * x - b" using assms(2) by auto
  then have "c * x - b = a * x + b - b" by (metis add_cancel_left_right assms(1) assms(2) cancel_div diff_self eq_diff_eq' frac_eq_eq group_cancel.sub1)
  thus ?thesis by simp
qed