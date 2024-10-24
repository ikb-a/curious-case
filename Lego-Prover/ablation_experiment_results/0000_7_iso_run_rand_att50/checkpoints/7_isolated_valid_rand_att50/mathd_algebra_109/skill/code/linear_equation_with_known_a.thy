theorem linear_equation_with_known_a:
  fixes a b :: real
  assumes h0 : "m*a + n*b = p"
    and h1 : "a = k"
    and h2 : "n \<noteq> 0"
  shows "b = (p - m*k) / n"
proof -
  have "n*b = p - m*a" using h0 by simp
  then have "b = (p - m*a) / n" by (metis h2 mult.commute nonzero_mult_div_cancel_right)
  also have "... = (p - m*k) / n" using h1 by simp
  finally show ?thesis by simp
qed