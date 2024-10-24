lemma conditions_on_n:
  fixes n :: nat
  assumes "73 * n \<le> 546"
  shows "546 - 73 * n \<ge> 0"
proof -
  have "546 - 73 * n = 546 - (73 * n)" by simp
  also have "... = 546 - 546 + (546 - 73 * n)" using assms by (simp add: le_diff_eq)
  finally have "546 - 73 * n \<ge> 0" by (simp add: le_zero_eq)
  thus ?thesis by simp
qed