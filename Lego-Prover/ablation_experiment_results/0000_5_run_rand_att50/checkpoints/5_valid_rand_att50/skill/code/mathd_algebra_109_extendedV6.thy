theorem mathd_algebra_109_extended:
  fixes a b c :: real
  assumes h0 : "3*a + 2*b = c"
    and h1 : "a = 4"
    and h2 : "c = 12"
  shows "b = 0"
proof -
  have eq: "3 * a + 2 * b = c" using h0 by simp
  have "3 * 4 + 2 * b = c" using h1 eq by simp
  have "12 + 2 * b = c" using h2 by (smt (verit) \<open>3 * 4 + 2 * b = c\<close>)
  have "2 * b = 12 - 12" by (metis \<open>12 + 2 * b = c\<close> add.commute add.left_commute add_diff_cancel add_diff_eq add_minus_cancel diff_conv_add_uminus diff_minus_eq_add equation_minus_iff group_cancel.neg1 h2 minus_diff_eq mult.commute mult_2 mult_2_right square_eq_iff uminus_add_conv_diff verit_minus_simplify(4))
  have "2 * b = 0" by (metis \<open>2 * b = 12 - 12\<close> cancel_comm_monoid_add_class.diff_cancel dbl_simps(3) h2)
  show ?thesis using `2 * b = 0` by simp
qed