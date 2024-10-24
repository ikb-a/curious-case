theorem mathd_algebra_109_generalized:
  fixes a b c :: real
  assumes h0 : "3*a + 2*b = c"
    and h1 : "a = 4"
  shows "b = (c - 12) / 2"
proof -
  have "3 * a = 3 * 4" using h1 by simp
  hence "3 * a = 12" by simp
  then have "3 * a + 2 * b = c" using h0 by simp
  thus ?thesis using h0 h1 by (simp add: algebra_simps)
qed