theorem amc12a_2013_p8:
  fixes x y :: real
  assumes h0 : "x\<noteq>0"
    and h1 : "y\<noteq>0"
    and h2 : "x\<noteq>y"
    and h3 : "x + 2/x = y + 2/y"
  shows "x * y = 2"
proof -
  have "x + 2/x = y + 2/y" using h3 by simp
  then have rearranged: "x - y = (2/y - 2/x)" by (smt (verit) h3)
  have "x * y * (x - y) = 2 * (x - y)" 
    using rearranged by sos
  have "x * y = 2" 
    using h2 by (smt (verit) \<open>x * y * (x - y) = 2 * (x - y)\<close> add_divide_distrib add_frac_eq add_nonneg_eq_0_iff divide_cancel_right divide_self_if eq_divide_imp eq_iff_diff_eq_0 field_sum_of_halves h0 h1 mult_2 mult_cancel_right2 no_zero_divisors nonzero_divide_mult_cancel_right nonzero_mult_divide_mult_cancel_left nonzero_mult_divide_mult_cancel_left2 nonzero_mult_divide_mult_cancel_right of_bool_eq(1) of_bool_eq(2) of_bool_eq_0_iff times_divide_times_eq zero_less_eq_of_bool)
  thus ?thesis by simp
qed