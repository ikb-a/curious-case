theorem mathd_algebra_109_evolved:
  fixes a b :: real
  assumes h0 : "3*a + 2*b = 12"
    and h1 : "a = 4"
  shows "b = 0"
proof -
  from h1 have "3 * a = 3 * 4" by simp
  hence "3 * a = 12" by simp
  then have "3 * a + 2 * b = 12" using h0 by simp
  thus "b = 0" using h0 h1 by (simp add: algebra_simps)
qed