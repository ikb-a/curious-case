theorem linear_system_solution:
  fixes a b :: real
  assumes h0 : "m*a + n*b = p"
    and h1 : "a = q"
    and h2 : "n \<noteq> 0"
  shows "b = (p - m*q)/n"
proof -
  have eq: "m*a + n*b = p" using h0 by simp
  have "m*q + n*b = p" using h1 eq by simp
  have "n*b = p - m*q" by (metis \<open>m * q + n * b = p\<close> add_diff_cancel_left' h1 mult_delta_right)
  then show ?thesis by (metis h2 mult.commute nonzero_mult_div_cancel_right)
qed