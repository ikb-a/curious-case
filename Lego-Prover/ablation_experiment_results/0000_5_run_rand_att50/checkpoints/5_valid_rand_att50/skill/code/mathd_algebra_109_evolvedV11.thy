theorem mathd_algebra_109_evolved:
  fixes a b c :: real
  assumes h0 : "3*a + 2*b + c = 12"
    and h1 : "a = 4" and h2: "c = 0"
  shows "b = 0"
proof -
  have eq: "3 * a + 2 * b + c = 12" using h0 by simp
  have "3 * 4 + 2 * b + 0 = 12" using h1 h2 eq by simp
  have "12 + 2 * b = 12" by (smt (verit) \<open>3 * 4 + 2 * b + 0 = 12\<close>)
  have "2 * b = 0" by (metis `12 + 2 * b = 12` add_cancel_right_right)
  show ?thesis using `2 * b = 0` by simp
qed