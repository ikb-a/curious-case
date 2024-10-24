theorem mathd_algebra_109_simple:
  fixes a b :: real
  assumes h0: "3 * a + 2 * b = 12"
      and h1: "a = 4"
  shows "b = 0"
proof -
  have "3 * 4 + 2 * b = 12" using h1 h0 by simp
  thus "b = 0" by (simp add: algebra_simps)
qed