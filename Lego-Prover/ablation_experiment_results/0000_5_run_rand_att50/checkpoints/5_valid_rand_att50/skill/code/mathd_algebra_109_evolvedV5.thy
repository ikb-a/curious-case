theorem mathd_algebra_109_evolved:
  fixes a b :: real
  assumes h0 : "3*a + 2*b = 12"
    and h1 : "a = 4"
  shows "b = 0"
proof -
  from h1 have "3 * a = 3 * 4" by simp
  then have "3 * a = 12" by simp
  moreover have "3 * a + 2 * b = 12" using h0 by simp
  ultimately have "12 + 2 * b = 12" by simp
  hence "2 * b = 0" by (simp add: add_cancel_right_right)
  thus ?thesis by simp
qed