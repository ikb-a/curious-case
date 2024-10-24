theorem mathd_algebra_110:
  fixes a b c :: real
  assumes h0 : "3*a + 2*b = c"
    and h1 : "a = 4"
  shows "b = (c - 12) / 2"
proof -
  have eq: "3 * a + 2 * b = c" using h0 by simp
  have "3 * 4 + 2 * b = c" using h1 eq by simp
  have "12 + 2 * b = c" by (smt (verit) \<open>3 * 4 + 2 * b = c\<close>)
  have "2 * b = c - 12" by (metis \<open>12 + 2 * b = c\<close> add.left_commute add_diff_cancel_left add_minus_cancel equation_minus_iff is_num_normalize(1) minus_add_cancel minus_real_def mult.commute mult_2_right numeral_neq_neg_numeral numeral_times_minus_swap square_eq_iff uminus_add_conv_diff)
  thus ?thesis using `2 * b = c - 12` by (simp add: field_simps)
qed