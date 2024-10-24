theorem mathd_algebra_109_evolved:
  fixes a b :: real
  assumes h0 : "3 * a + 2 * b = 12"
    and h1 : "a = 4"
  shows "b = 0"
proof -
  have eq: "3 * a + 2 * b = 12" using h0 by simp
  have "3 * 4 + 2 * b = 12" using h1 eq by simp
  hence "12 + 2 * b = 12" by simp
  hence "2 * b = 0" by (metis add_cancel_right_right)
  show ?thesis using `2 * b = 0` by simp
qed