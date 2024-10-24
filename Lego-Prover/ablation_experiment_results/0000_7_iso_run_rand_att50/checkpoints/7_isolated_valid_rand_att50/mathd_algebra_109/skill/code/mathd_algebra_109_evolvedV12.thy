theorem mathd_algebra_109_evolved:
  fixes a b c :: real
  assumes h0 : "3*a + 2*b = c"
    and h1 : "a = 4"
    and h2 : "c = 12"
  shows "b = (c - 3 * a) / 2"
proof -
  have "3 * a + 2 * b = c" using h0 by simp
  moreover have "3 * 4 + 2 * b = c" using h1 by (metis h0)
  hence "12 + 2 * b = c" by simp
  hence "2 * b = c - 12" by (simp add: algebra_simps)
  thus "b = (c - 3 * a) / 2" using h1 h2 by (simp add: algebra_simps)
qed