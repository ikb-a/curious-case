theorem mathd_algebra_109_extended:
  fixes a b :: real
  assumes h0 : "3*a + 2*b = 12"
    and h1 : "a = 4"
  shows "b = 0" and "3*a + 2*b = 12 \<Longrightarrow> b = (12 - 3*a)/2"
proof -
  have eq: "3 * a + 2 * b = 12" using h0 by simp
  have "3 * 4 + 2 * b = 12" using h1 eq by simp
  have "12 + 2 * b = 12" by (smt (verit) \<open>3 * 4 + 2 * b = 12\<close>)
  have "2 * b = 0" by (metis \<open>12 + 2 * b = 12\<close> add_cancel_right_right)
  show "b = 0" using `2 * b = 0` by simp
next
  show "3*a + 2*b = 12 \<Longrightarrow> b = (12 - 3*a)/2"
    by auto
qed