theorem linear_combination_solve_for_b:
  fixes a b :: real
  assumes h0 : "m*a + n*b = p"
    and h1 : "a = c"
    and h2 : "n \<noteq> 0"
  shows "b = (p - m*c) / n"
proof -
  have "n*b = p - m*a" using h0 by simp
  then have "b = (p - m*a) / n" by (metis h2 mult.commute nonzero_mult_div_cancel_right)
  then show ?thesis using h1 by simp
qed