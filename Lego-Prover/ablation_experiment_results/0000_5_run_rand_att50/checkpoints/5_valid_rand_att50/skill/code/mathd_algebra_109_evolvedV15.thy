theorem mathd_algebra_109_evolved:
  fixes a b c :: real
  assumes h0 : "3*a + 2*b = c"
    and h1 : "a = 4"
    and h2 : "c = 12"
  shows "b = (c - 3*a) / 2"
proof -
  have eq: "3 * a + 2 * b = c" using h0 by simp
  have "3 * 4 + 2 * b = c" using h1 eq by simp
  hence "12 + 2 * b = c" by auto
  have "2 * b = c - 12" by (metis \<open>12 + 2 * b = c\<close> add.commute add.left_commute add_diff_cancel add_diff_eq add_minus_cancel diff_conv_add_uminus diff_minus_eq_add group_cancel.neg1 h2 minus_diff_eq minus_equation_iff mult.commute mult_2 mult_2_right square_eq_iff uminus_add_conv_diff verit_minus_simplify(4))
  show ?thesis using `2 * b = c - 12` by (smt (verit) \<open>12 + 2 * b = c\<close> add_cancel_right_right add_right_imp_eq diff_divide_distrib h0 h2)
qed