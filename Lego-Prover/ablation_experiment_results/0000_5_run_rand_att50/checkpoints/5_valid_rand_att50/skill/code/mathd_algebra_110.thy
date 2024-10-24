theorem mathd_algebra_110:
  fixes a b :: real
  assumes h0 : "3 * a + 2 * b = 12"
    and h1 : "a = 4"
  shows "b = (12 - 3 * a) / 2"
proof -
  have "3 * a + 2 * b = 12" using h0 by simp
  then have "2 * b = 12 - 3 * a" by (simp add: algebra_simps)
  then show ?thesis using h1 by simp
qed