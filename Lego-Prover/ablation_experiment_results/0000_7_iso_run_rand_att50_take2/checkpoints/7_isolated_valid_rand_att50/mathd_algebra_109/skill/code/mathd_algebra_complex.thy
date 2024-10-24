theorem mathd_algebra_complex:
  fixes a b c d :: real
  assumes h0 : "3 * a + 2 * b = d"
    and h1 : "a + b = 5"
    and h2 : "d + c = 10"
  shows "c = 10 - (3 * a + 2 * b)"
proof -
  from h0 have "d = 3 * a + 2 * b" by simp
  then have "c = 10 - d" using h2 by simp
  thus "c = 10 - (3 * a + 2 * b)" by (simp add: `d = 3 * a + 2 * b`)
qed