theorem linear_equation_solution:
  fixes a b :: real
  assumes h0 : "m*a + n*b = p"
    and h1 : "a = a_val"
    and h2 : "n \<noteq> 0"
  shows "b = (p - m*a_val)/n"
proof -
  have eq: "m*a + n*b = p" using h0 by simp
  have sub: "m*a_val + n*b = p" using h1 eq by simp
  then have "n*b = p - m*a_val" by auto
  then have "b = (p - m*a_val)/n" by (metis h2 mult.commute nonzero_mult_div_cancel_right)
  then show ?thesis by simp
qed