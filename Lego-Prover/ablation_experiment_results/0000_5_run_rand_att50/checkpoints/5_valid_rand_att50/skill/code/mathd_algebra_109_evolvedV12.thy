theorem mathd_algebra_109_evolved:
  fixes a b c :: real
  assumes h0 : "c = 3 * a + 2 * b"
    and h1 : "a = 4"
    and h2 : "c = 12"
  shows "b = 0"
proof -
  have eq: "c = 3 * a + 2 * b" using h0 by simp
  have "12 = 3 * 4 + 2 * b" using h1 h2 eq by simp
  have "12 = 12 + 2 * b" by (smt (verit) \<open>12 = 3 * 4 + 2 * b\<close>)
  have "2 * b = 0" by (metis `12 = 12 + 2 * b` add_cancel_right_right)
  show ?thesis using `2 * b = 0` by simp
qed