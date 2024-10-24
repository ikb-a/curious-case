lemma cancel_div_general_with_zero_for_complex_extended:
  fixes x a b c :: complex
  assumes "x \<noteq> 0" "y \<noteq> 0" "a + b / x = c" "a + b / y = d"
  shows "a * x + b = c * x \<and> a * y + b = d * y"
proof -
  have "x * (a + b / x) = c * x" using assms(2) by (metis assms(3) mult.commute)
  then have "x * a + x * (b / x) = c * x" by (simp add: distrib_left)
  have "y * (a + b / y) = d * y" using assms(4) by auto
  then have "y * a + y * (b / y) = d * y" by (simp add: distrib_left)
  thus ?thesis using assms(1) by (smt (verit) \<open>x * (a + b / x) = c * x\<close> \<open>x * a + x * (b / x) = c * x\<close> add_cancel_left_right add_divide_eq_iff assms(2) assms(4) divide_cancel_right divide_eq_0_iff eq_divide_imp mult.commute no_zero_divisors nonzero_eq_divide_eq nonzero_mult_divide_mult_cancel_left nonzero_mult_divide_mult_cancel_right2 times_divide_eq_right)
qed