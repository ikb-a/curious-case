theorem linear_combination_solution:
  fixes a b :: real
  assumes h0 : "m*a + n*b = p"
    and h1 : "a = a_value"  
    and h2 : "n \<noteq> 0"  
  shows "b = (p - m*a_value)/n"
proof -
  have eq: "m*a_value + n*b = p" using h0 h1 by simp
  have rearrange: "n*b = p - m*a_value" using eq by simp
  then have solution: "b = (p - m*a_value)/n" by (metis h2 mult.commute nonzero_mult_div_cancel_right)
  show ?thesis using solution by simp
qed