theorem solve_for_b_generalized:
  fixes a b p :: real
  assumes h0 : "m*a + n*b = p"
    and h1 : "m \<noteq> 0" and h2 : "n \<noteq> 0"
  shows "b = (p - m*a) / n"
proof -
  have "n*b = p - m*a"
    using h0 by simp
  then have "b = (p - m*a)/n"
    by (metis h2 mult.commute nonzero_mult_div_cancel_right)
  then show ?thesis by simp
qed