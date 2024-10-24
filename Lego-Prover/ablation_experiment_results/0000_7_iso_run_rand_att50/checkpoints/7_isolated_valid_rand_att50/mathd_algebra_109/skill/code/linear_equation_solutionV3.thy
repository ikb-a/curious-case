theorem linear_equation_solution:
  fixes a b :: real
  assumes h0 : "m*a + n*b = p"
    and h1 : "a = x"
    and h2 : "n \<noteq> 0"
  shows "b = (p - m*x) / n"
proof -
  have "m*a + n*b = p" using h0 by simp
  then have "m*x + n*b = p" using h1 by simp
  then have "n*b = p - m*x" by (simp add: add.commute)
  then show "b = (p - m*x) / n" by (metis h2 mult.commute nonzero_mult_div_cancel_right)
qed