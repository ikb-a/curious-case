theorem mathd_algebra_generalized:
  fixes a b c :: real
  assumes h0 : "c * a + 2 * b = 12"
    and h1 : "a = 4"
  shows "b = (12 - c * 4) / 2"
proof -
  have eq: "c * a + 2 * b = 12" using h0 by simp
  have "c * 4 + 2 * b = 12" using h1 eq by simp
  have "2 * b = 12 - c * 4" by (smt (verit) \<open>c * 4 + 2 * b = 12\<close>)
  show ?thesis using `2 * b = 12 - c * 4` by simp
qed