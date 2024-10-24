lemma cancel_div:
  fixes x a b c :: real
  assumes "x > 0" "a + b / x = c"
  shows "a * x + b = c * x"
proof -
  have "x * (a + b / x) = c * x"
    using assms(2) by auto
  then have "x * a + x * (b / x) = c * x"
    by (simp add: distrib_left)
  then show ?thesis
    by (metis add.commute assms(1) divide_divide_eq_left' divide_divide_eq_right divide_less_eq_1_pos divide_self_if less_numeral_extra(1) mult.commute mult.right_neutral real_divide_square_eq times_divide_eq_left times_divide_eq_right verit_comp_simplify1(1))
qed