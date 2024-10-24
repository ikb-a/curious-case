theorem mathd_algebra_109_generalized:
  fixes a b :: real
  assumes h0 : "3*a + 2*b = k"
    and h1 : "a = 4"
  shows "b = (k - 12) / 2"
proof -
  have "3 * 4 + 2 * b = k" using h1 by (metis h0)
  then have "12 + 2 * b = k" by simp
  have "2 * b = k - 12" using `12 + 2 * b = k` by simp
  have "b = (k - 12) / 2" using `2 * b = k - 12` by (simp add: field_simps)
  show ?thesis using `b = (k - 12) / 2` by simp
qed