theorem mathd_algebra_109_evolved:
  fixes a b c :: real
  assumes h0 : "3*a + 2*b = 12"
    and h1 : "a = 4"
    and h2 : "c = 0"
  shows "b = 0"
proof -
  have "3 * 4 + 2 * b = 12" using h1 by (metis h0)
  then have "12 + 2 * b = 12" by simp
  have "2 * b = 0" using `12 + 2 * b = 12` by simp
  have "b = 0" using `2 * b = 0` by simp
  show ?thesis using `b = 0` by simp
qed