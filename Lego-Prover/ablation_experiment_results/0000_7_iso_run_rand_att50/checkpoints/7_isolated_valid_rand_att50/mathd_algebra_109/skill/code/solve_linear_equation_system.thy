theorem solve_linear_equation_system:
  fixes a b :: real
  assumes h0 : "m * a + n * b = p"
    and h1 : "m > 0" 
    and h2 : "n > 0"
  shows "b = (p - m * a) / n"
proof -
  have "m * a + n * b = p" using h0 by simp
  then have "n * b = p - m * a" by (simp add: h1)
  then show ?thesis by (metis h2 less_numeral_extra(3) mult.commute nonzero_mult_div_cancel_right)
qed