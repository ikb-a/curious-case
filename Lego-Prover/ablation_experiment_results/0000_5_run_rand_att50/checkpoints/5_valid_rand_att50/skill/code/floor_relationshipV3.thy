lemma floor_relationship:
  fixes r :: real
  assumes "n = floor r"
  shows "n \<le> r \<and> r < n + 1"
proof -
  have "n \<le> r" using assms by auto
  moreover have "r < n + 1"
  proof -
    have "r < floor r + 1" using assms by auto
    thus ?thesis by (simp add: assms)
  qed
  ultimately show ?thesis by simp
qed