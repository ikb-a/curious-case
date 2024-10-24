lemma cancel_div_with_inequality:
  fixes x a b c :: real
  assumes "x > 0" "a + b / x = c" "b >= 0" "a >= 0"
  shows "a * x + b = c * x"
proof -
  have "x * (a + b / x) = c * x"
    using assms(2) by (simp)
  then have "x * a + x * (b / x) = c * x"
    by (simp add: distrib_left)
  then have "x * a + b = c * x"
    by (metis \<open>x * (a + b / x) = c * x\<close> add.commute assms(1) assms(2) linorder_not_less nonzero_mult_div_cancel_left order_refl times_divide_eq_right)
  have "a * x + b >= 0" using assms by auto
  then show ?thesis
    by (metis \<open>x * a + b = c * x\<close> frac_eq_eq mult.commute mult_eq_0_iff)
qed