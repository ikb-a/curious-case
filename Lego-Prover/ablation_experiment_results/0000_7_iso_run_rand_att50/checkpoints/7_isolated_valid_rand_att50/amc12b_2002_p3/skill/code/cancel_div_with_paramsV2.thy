lemma cancel_div_with_params:
  fixes x a b c p q :: real
  assumes "x > 0" "a + b / x = c" "p = a" "q = b"
  shows "p * x + q = c * x"
proof -
  have "x * (a + b / x) = c * x" using assms(2) by auto
  then have "x * a + x * (b / x) = c * x" by (simp add: distrib_left)
  then show ?thesis using assms(1) by (metis add.commute assms(3) assms(4) divide_divide_eq_left' divide_divide_eq_right divide_less_eq_1_pos divide_self_if mult.commute mult.right_neutral real_divide_square_eq times_divide_eq_left times_divide_eq_right verit_comp_simplify1(1) zero_less_one)
qed