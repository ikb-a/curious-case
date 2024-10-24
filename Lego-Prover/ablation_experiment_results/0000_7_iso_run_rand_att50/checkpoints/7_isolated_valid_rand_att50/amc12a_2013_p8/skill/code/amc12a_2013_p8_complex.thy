theorem amc12a_2013_p8_complex:
  fixes x y :: complex
  assumes h0 : "x\<noteq>0"
    and h1 : "y\<noteq>0"
    and h2 : "x\<noteq>y"
    and h3 : "x + 2/x = y + 2/y"
  shows "x * y = 2"
proof -
  have eq: "x + 2/x = y + 2/y" using h3 by auto
  have rearranged: "x - y = (2/y - 2/x)" 
    using eq by (simp add: algebra_simps)
  have cross_mult: "(x - y) * x * y = 2 * x - 2 * y" 
    using rearranged by (smt (verit) divide_cancel_right divide_diff_eq_iff eq_divide_imp h0 h1 left_diff_distrib' right_diff_distrib' times_divide_eq_left)
  have factored: "(x - y) * x * y = 2 * (x - y)"
    using cross_mult by (simp add: field_simps)
  have "x * y = 2" 
    using factored h2 by (smt (verit) eq_divide_imp eq_iff_diff_eq_0 h0 mult.commute no_zero_divisors nonzero_mult_div_cancel_left nonzero_mult_divide_mult_cancel_right2 times_divide_eq_left)
  thus ?thesis by simp
qed