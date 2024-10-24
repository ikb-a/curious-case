theorem linear_equation_solution:
  fixes a b :: real
  assumes h0 : "m*a + n*b = p"
    and h1 : "a = x"
    and h2 : "n \<noteq> 0"
  shows "b = (p - m*x)/n"
proof -
  have "m*a + n*b = p" using h0 by simp
  also have "... = m*x + n*b" using h1 by (metis h0)
  finally have "n*b = p - m*x" by (metis \<open>p = m * x + n * b\<close> add_diff_cancel_left' h1 mult_delta_right)
  then have "b = (p - m*x)/n" by (metis h2 mult.commute nonzero_mult_div_cancel_right)
  then show ?thesis by simp
qed