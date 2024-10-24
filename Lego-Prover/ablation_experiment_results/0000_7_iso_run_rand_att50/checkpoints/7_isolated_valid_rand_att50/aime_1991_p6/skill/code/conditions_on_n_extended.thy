lemma conditions_on_n_extended:
  fixes n :: nat
  assumes "k > 0" "k * n \<le> m"
  shows "m - k * n \<ge> 0"
proof -
  have "m - k * n \<ge> m - m" using assms by (simp add: le_diff_eq)
  thus ?thesis by simp
qed