theorem mathd_algebra_109_evolved:
  fixes a b c :: real
  assumes h0 : "3*a + 2*b = c"
    and h1 : "a = 4"
    and h2 : "c = 12"
  shows "b = 0"
proof -
  have eq: "3 * a + 2 * b = c" using h0 by simp
  have "3 * 4 + 2 * b = c" using h1 eq by simp
  have "12 + 2 * b = c" using h2 by (smt (verit) \<open>3 * 4 + 2 * b = c\<close>)
  have "12 + 2 * b = 12" using h2 by (metis \<open>12 + 2 * b = c\<close>)
  have "2 * b = 0" by (metis \<open>12 + 2 * b = 12\<close> add_cancel_right_right)
  show ?thesis using `2 * b = 0` by simp
qed