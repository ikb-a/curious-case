theorem mathd_algebra_solve_system:
  fixes a b :: real
  assumes h0: "3*a + 2*b = 12"
    and h1: "a = 4"
  shows "b = (12 - 3*4) / 2"
proof -
  have "3*a + 2*b = 12" using h0 by simp
  then have "3*4 + 2*b = 12" using h1 by simp
  then have "12 + 2*b = 12" by (simp add: algebra_simps)
  then have "2*b = 0" by (metis add_cancel_right_right)
  then show ?thesis using `2*b = 0` by simp
qed