theorem linear_combination_solve_for_b_generalized:
  fixes a b :: real
  assumes h0 : "m*a + n*b = p"
    and h1 : "a = k"
    and h2 : "n \<noteq> 0"
  shows "b = (p - m*k)/n"
proof -
  have "n*b = p - m*a" using h0 by simp
  then have "b = (p - m*k)/n" using h1 by (metis h2 mult.commute nonzero_mult_div_cancel_right)
  then show ?thesis by (metis h2 mult.commute nonzero_mult_div_cancel_right)
qed