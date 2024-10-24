theorem amc12a_2017_p2:
  fixes x y :: real
  assumes h0: "x \<noteq> 0"
    and h1: "y \<noteq> 0"
    and h2: "x + y = 4 * (x * y)"
  shows "1/x + 1/y = 4"
proof -
  have "x + y = 4 * (x * y)" using h2 by simp
  then have "1/x + 1/y = (y + x) / (x * y)" by (auto simp: field_simps)
  also have "... = 4" using h0 h1 by (metis add.commute div_by_1 divide_eq_0_iff frac_eq_eq h2 mult_cancel_left2 nonzero_mult_div_cancel_right nonzero_mult_divide_mult_cancel_right2 zero_neq_one)
  finally show ?thesis by simp
qed