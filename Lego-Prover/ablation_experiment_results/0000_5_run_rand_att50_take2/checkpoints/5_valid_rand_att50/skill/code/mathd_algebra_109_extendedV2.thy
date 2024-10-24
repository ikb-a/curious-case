theorem mathd_algebra_109_extended:
  fixes a b :: real
  assumes h0 : "k * a + m * b = c"
    and h1 : "a = d"
    and h2: "k > 0" and "m > 0"
  shows "b = (c - k * d) / m"
proof -
  have eq: "k * a + m * b = c" using h0 by simp
  have sub: "k * d + m * b = c" using h1 eq by simp
  have isolate: "m * b = c - k * d" using sub by simp
  have solution: "b = (c - k * d) / m" using isolate by (metis assms(4) less_numeral_extra(3) mult.commute nonzero_mult_div_cancel_right)
  show ?thesis using solution by simp
qed