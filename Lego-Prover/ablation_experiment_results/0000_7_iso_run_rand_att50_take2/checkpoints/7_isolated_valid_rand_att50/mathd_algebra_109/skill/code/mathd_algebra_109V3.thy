theorem mathd_algebra_109:
  fixes a b :: real
  assumes h0 : "3*a + 2*b = 12"
    and h1 : "a = 4"
  shows "b = 0"
proof -
  have "3 * 4 + 2 * b = 12" using h1 by (metis h0)
  hence "12 + 2 * b = 12" by simp
  thus "b = 0" using `12 + 2 * b = 12` by auto
qed