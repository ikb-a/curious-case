lemma conditions_on_n_and_r:
  fixes n r :: nat
  assumes "73 * n + r = 546"
  shows "0 \<le> r \<and> 73 * n \<le> 546"
proof -
  have "r = 546 - 73 * n" using assms by simp
  moreover have "0 \<le> r" using assms by auto
  ultimately show ?thesis by (metis assms le_add1)
qed