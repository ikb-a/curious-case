theorem linear_equation_solution:
  fixes a b :: real
  assumes h0 : "m*a + n*b = p"
    and h1 : "a = q"
    and h2 : "n \<noteq> 0"
  shows "b = (p - m*q) / n"
proof -
  have "n*b = p - m*q" using h0 h1 by simp
  then have "b = (p - m*q) / n" by (metis h2 mult.commute nonzero_mult_div_cancel_right)
  then show ?thesis by simp
qed