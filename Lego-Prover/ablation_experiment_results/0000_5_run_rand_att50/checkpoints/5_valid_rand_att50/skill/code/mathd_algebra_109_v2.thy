theorem mathd_algebra_109_v2:
  fixes a b :: real
  assumes h0 : "3 * a + 2 * b = 12"
    and h1 : "a = 4"
  shows "b = 0"
proof -
  have "3 * a + 2 * b = 12" using h0 by simp
  have "3 * 4 + 2 * b = 12" using h1 by (metis dbl_inc_simps(3) dbl_simps(3) h0)
  then have "12 + 2 * b = 12" by simp
  have "2 * b = 0" by (metis \<open>12 + 2 * b = 12\<close> add_cancel_right_right)
  thus ?thesis by simp
qed