theorem mathd_algebra_123_v2:
  fixes a b c :: real
  assumes h0: "3 * a + 2 * b = 12"
      and h1: "a = 4"
  shows "b = 0"
proof -
  have "3 * 4 + 2 * b = 12" using h1 h0 by simp
  hence "12 + 2 * b = 12" by simp
  hence "2 * b = 0" by (metis add.commute add_cancel_right_left)
  thus ?thesis by simp
qed