theorem mathd_algebra_109_generalized:
  fixes a b c d :: real
  assumes h0 : "3*a + 2*b + d = c"
    and h1 : "a = 4" "d = 0"
  shows "b = (c - 12) / 2"
proof -
  have eq: "3 * a + 2 * b + d = c" using h0 by simp
  have "3 * 4 + 2 * b + 0 = c" using h1(1) eq by (metis dbl_inc_simps(3) dbl_simps(3) h1(2))
  hence "12 + 2 * b = c" by simp
  thus ?thesis using h1(2) by simp
qed