theorem linear_combination_solve_for_b:
  fixes a b :: real
  assumes h0 : "m*a + n*b = p"
    and h1 : "n \<noteq> 0"
  shows "b = (p - m*a)/n"
proof -
  have "n*b = p - m*a" using h0 by simp
  then have "b = (p - m*a)/n"
    by (metis h1 mult.commute nonzero_mult_div_cancel_right)
  then show ?thesis by simp
qed