theorem mathd_algebra_linear:
  fixes a b c :: real
  assumes h0 : "3 * a + 2 * b = c"
    and h1 : "a = 4"
  shows "b = (c - 12) / 2"
proof -
  have "3 * 4 + 2 * b = c" using h1 by (metis h0)
  then have "12 + 2 * b = c" by simp
  then have "2 * b = c - 12" by simp
  then show "b = (c - 12) / 2" by (simp add: field_simps)
qed