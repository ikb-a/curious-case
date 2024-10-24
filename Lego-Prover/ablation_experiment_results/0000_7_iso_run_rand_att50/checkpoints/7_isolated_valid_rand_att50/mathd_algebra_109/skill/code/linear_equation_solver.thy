lemma linear_equation_solver:
  fixes a b :: real
  assumes h0 : "m*a + n*b = p"
    and h1 : "m > 0" "n > 0"
    and h2 : "a = c"
  shows "b = (p - m*c)/n"
proof -
  have "n*b = p - m*c" using h0 h2 by simp
  then have "b = (p - m*c)/n"
    by (metis h1(2) less_numeral_extra(3) mult.commute nonzero_mult_div_cancel_right)
  then show ?thesis by simp
qed