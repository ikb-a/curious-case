theorem linear_equation_solution:
  fixes a b :: real
  assumes h0 : "m*a + n*b = p"
    and h1 : "a = c"  
    and h2 : "n \<noteq> 0"
  shows "b = (p - m*c)/n"
proof -
  have "m*c + n*b = p" using h1 h0 by simp
  then have "n*b = p - m*c" by simp
  then show ?thesis by (metis h2 mult.commute nonzero_mult_div_cancel_right)
qed