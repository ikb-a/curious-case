lemma inequality_floor:
  fixes r :: real
  assumes "n = floor r"
  shows "n \<le> r \<and> r < n + 1"
proof -
  have "n \<le> r" using assms
    by auto
  moreover have "r < n + 1" using assms
    by auto
  ultimately show ?thesis by simp
qed