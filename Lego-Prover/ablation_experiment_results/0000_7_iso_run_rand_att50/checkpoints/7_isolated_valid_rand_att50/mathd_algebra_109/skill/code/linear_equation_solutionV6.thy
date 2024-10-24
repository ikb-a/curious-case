theorem linear_equation_solution:
  fixes a b :: real
  assumes h0 : "m*a + n*b = p"
    and h1 : "a = c"
    and h2 : "n \<noteq> 0"
  shows "b = (p - m*c) / n"
proof -
  have "m*a + n*b = p" using h0 by simp
  then have "m*c + n*b = p" using h1 by simp
  then have "n*b = p - m*c" by (metis add_diff_cancel_left')
  then have "b = (p - m*c) / n" by (metis h2 mult.commute nonzero_mult_div_cancel_right)
  then show ?thesis by simp
qed