theorem mathd_algebra_109_evolved:
  fixes a b :: real
  assumes h0 : "3 * a + 2 * b = 12"
    and h1 : "a = 4"
  shows "b = 0"
proof -
  have "3 * 4 + 2 * b = 12" using h1 by (metis dbl_inc_simps(3) dbl_simps(3) h0)
  then have "12 + 2 * b = 12" by simp
  then have "2 * b = 0" by (simp add: algebra_simps)
  thus ?thesis by simp
qed