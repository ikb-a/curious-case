theorem linear_equation_solution:
  fixes a b :: real
  assumes h0 : "m*a + n*b = p"
    and h1 : "a = a0"  
    and h2 : "n \<noteq> 0"
  shows "b = (p - m*a0)/n"
proof -
  have eq: "m*a + n*b = p" using h0 by simp
  have sub: "m*a0 + n*b = p" using h1 eq by simp
  then have isolation: "n*b = p - m*a0" by simp
  then have "b = (p - m*a0)/n" by (metis h2 mult.commute nonzero_mult_div_cancel_right)
  then show ?thesis by simp
qed