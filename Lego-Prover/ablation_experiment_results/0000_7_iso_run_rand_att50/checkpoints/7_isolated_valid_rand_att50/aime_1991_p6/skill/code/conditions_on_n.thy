lemma conditions_on_n:
  fixes n :: nat
  assumes "73 * n \<le> 546"
  shows "546 - 73 * n \<ge> 0"
proof -
  have "546 - 73 * n \<ge> 546 - 546" using assms by (simp add: le_diff_eq)
  thus ?thesis by simp
qed