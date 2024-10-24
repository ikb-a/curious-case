theorem linear_equation_solution:
  fixes a b :: real
  assumes h0 : "m * a + n * b = p"
    and h1 : "a = x"
    and h2 : "n > 0"
  shows "b = (p - m * x) / n"
proof -
  have "m * a + n * b = p" using h0 by simp
  then have "m * x + n * b = p" using h1 by simp
  then have "n * b = p - m * x" by auto
  then have "b = (p - m * x) / n" by (metis h2 less_numeral_extra(3) mult.commute nonzero_mult_div_cancel_right)
  then show ?thesis by simp
qed