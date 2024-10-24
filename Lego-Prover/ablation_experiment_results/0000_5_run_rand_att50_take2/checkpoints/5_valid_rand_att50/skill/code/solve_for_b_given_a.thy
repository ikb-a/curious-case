theorem solve_for_b_given_a:
  fixes a b :: real
  assumes h0 : "m*a + n*b = p"
    and h1 : "a = a_value"
    and h2 : "n > 0"
  shows "b = (p - m*a_value) / n"
proof -
  have eq: "m*a + n*b = p" using h0 by simp
  have sub: "m*a_value + n*b = p" using h1 eq by simp
  have isolate: "n*b = p - m*a_value" using sub by simp
  have solution: "b = (p - m*a_value) / n" using isolate by (metis h2 less_numeral_extra(3) mult.commute nonzero_mult_div_cancel_right)
  show ?thesis using solution by simp
qed