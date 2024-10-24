theorem linear_equation_solution:
  fixes a b :: real
  assumes h0 : "m*a + n*b = p"
    and h1 : "a = a_val"
    and h2 : "n \<noteq> 0"
  shows "b = (p - m*a_val) / n"
proof -
  have "n*b = p - m*a"
    using h0 by simp
  then have "b = (p - m*a_val) / n"
    by (metis h1 h2 mult.commute nonzero_mult_div_cancel_right)
  then show ?thesis by simp
qed