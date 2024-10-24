theorem complex_case_equivalence:
  fixes x y :: complex
  assumes h0 : "x \<noteq> 0"
    and h1 : "y \<noteq> 0"
    and h2 : "x \<noteq> y"
    and h3 : "x + 2 / x = y + 2 / y"
  shows "x * y = 2"
proof -
  have eq: "x + 2 / x = y + 2 / y" using h3 by simp
  have rearranged: "x - y = (2 / y - 2 / x)" using eq by (simp add: field_simps)
  have cross_mult: "(x - y) * (x * y) = 2 * (x - y)" 
    using rearranged by (smt (verit) diff_frac_eq divide_divide_eq_left' eq_iff_diff_eq_0 frac_eq_eq h0 h1 h2 mult.commute no_zero_divisors nonzero_mult_divide_mult_cancel_left right_diff_distrib')
  have "x * y = 2" 
  proof (cases "x - y = 0")
    case True
    then show ?thesis using h2 by auto
  next
    case False
    then have "x * y = 2" using cross_mult by (smt (verit) eq_divide_imp nonzero_mult_div_cancel_left)
    thus ?thesis by simp
  qed
  thus ?thesis by blast
qed