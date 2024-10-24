theorem mathd_algebra_generalized:
  fixes a b c d :: real
  assumes h0 : "c * a + d * b = 12"
    and h1 : "a = 4"
    and h2 : "c = 3" 
    and h3 : "d = 2"
  shows "b = 0"
proof -
  have eq: "c * a + d * b = 12" using h0 by simp
  have "3 * 4 + 2 * b = 12" using h1 h2 eq by (metis h3)
  have "12 + 2 * b = 12" by (smt (verit) \<open>3 * 4 + 2 * b = 12\<close>)
  have "2 * b = 0" by (metis \<open>12 + 2 * b = 12\<close> add_cancel_right_right)
  thus ?thesis using `2 * b = 0` by simp
qed