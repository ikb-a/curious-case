theorem mathd_algebra_109_evolved:
  fixes a b :: real
  assumes h0 : "3 * a + 2 * b = 12"
    and h1 : "a = 4" 
  shows "b = 0"
proof -
  from h1 have "3 * a = 3 * 4" by simp
  then have eq: "3 * 4 + 2 * b = 12" using h0 by simp
  hence "12 + 2 * b = 12" by auto
  thus ?thesis using eq by (simp add: add_cancel_right_right) 
qed