theorem mathd_algebra_109_extended:
  fixes a b x :: real
  assumes h0 : "3 * a + 2 * b = 12"
    and h1 : "a = x"
  shows "b = (12 - 3 * x) / 2"
proof -
  have "2 * b = 12 - 3 * a" using h0 by (simp add: field_simps)
  then have "b = (12 - 3 * a) / 2" by (simp add: field_simps)
  thus ?thesis using h1 by auto
qed