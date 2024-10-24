theorem mathd_algebra_109_generalized:
  fixes a b c :: real
  assumes h0 : "k * a + m * b = n"
    and h1 : "a = p"
    and h2 : "m > 0"
  shows "b = (n - k * p) / m"
proof -
  have eq: "k * a + m * b = n" using h0 by simp
  have "k * p + m * b = n" using h1 eq by simp
  thus ?thesis by (metis add_0_iff add_diff_cancel_left' add_right_imp_eq diff_eq_diff_less diff_zero distrib_left divide_eq_imp eq_diff_eq' h0 h1 h2 mult.commute mult_delta_left sum_squares_gt_zero_iff)
qed