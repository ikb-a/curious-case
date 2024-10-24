lemma mathd_algebra_n_general:
  fixes a b c :: real
  assumes "n > 0" "c = 3 * a + 2 * b"
    and "a = 4" "c = 12"
  shows "b = 0"
proof -
  have "3 * 4 + 2 * b = 12" using assms by simp
  have "12 + 2 * b = 12" by (smt (verit) \<open>3 * 4 + 2 * b = 12\<close>)
  have "2 * b = 0" by (metis \<open>12 + 2 * b = 12\<close> add_cancel_right_right)
  show ?thesis using `2 * b = 0` by simp
qed