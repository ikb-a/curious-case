theorem amc12a_2013_p8_complex:
  fixes x y :: complex
  assumes h0 : "x\<noteq>0"
    and h1 : "y\<noteq>0"
    and h2 : "x\<noteq>y"
    and h3 : "x + 2/x = y + 2/y"
  shows "x * y = 2"
proof -
  have "x + 2/x = y + 2/y" using h3 by simp
  have rearranged: "x - y = (2/y - 2/x)" by (smt (verit) add_diff_cancel_left add_diff_cancel_right h3)
  have cross_mult: "(x - y) * x * y = 2 * (x - y)" 
    using rearranged by (smt (verit) add_diff_cancel_left' add_implies_diff diff_diff_eq2 diff_divide_eq_iff diff_eq_diff_eq diff_frac_eq divide_cancel_left eq_divide_imp eq_iff_diff_eq_0 frac_eq_eq h0 h1 h2 h3 left_diff_distrib' mult.commute no_zero_divisors nonzero_mult_div_cancel_left right_diff_distrib')
  have "x * y = 2" 
    using h2 cross_mult by (smt (verit) add_implies_diff diff_add_cancel diff_add_eq divide_eq_eq eq_iff_diff_eq_0 h0 h1 no_zero_divisors nonzero_mult_div_cancel_left nonzero_mult_divide_mult_cancel_right2 rearranged)
  thus ?thesis by simp
qed