theorem mathd_algebra_421_extended:
  fixes a b c d :: real
  assumes h0 : "b = a^2 + 4 * a + 6"
    and h1 : "b = 1 / 2 * a^2 + a + 6"
    and h2 : "d = c^2 + 4 * c + 6"
    and h3 : "d = 1 / 2 * c^2 + c + 6"
    and h4 : "a < c"
  shows "c - a = 6"
proof -
  have "a^2 + 4 * a + 6 = 1/2 * a^2 + a + 6" using h0 h1 by simp
  hence "a^2 + 4 * a = 1/2 * a^2 + a" by (simp add: add.commute)
  then have "a^2 - 1/2 * a^2 + 4 * a - a = 0" by auto
  hence "1/2 * a^2 + 3 * a = 0" by (simp add: field_simps)
  thus "c - a = 6" using h2 h3 h4 by sos
qed