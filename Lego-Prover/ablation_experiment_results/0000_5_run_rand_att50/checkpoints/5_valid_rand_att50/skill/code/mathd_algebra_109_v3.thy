theorem mathd_algebra_109_v3:
  fixes a b c :: real
  assumes h0 : "3 * a + 2 * b = 12"
    and h1 : "a = 4"
    and h2 : "c = 2 * b"
  shows "c = 0"
proof -
  have eq: "3 * a + 2 * b = 12" using h0 by simp
  have "3 * 4 + 2 * b = 12" using h1 eq by simp
  then have "12 + 2 * b = 12" by simp
  have "2 * b = 0" by (metis \<open>12 + 2 * b = 12\<close> add_cancel_left_right)
  hence "b = 0" by auto
  thus "c = 0" using h2 by simp
qed