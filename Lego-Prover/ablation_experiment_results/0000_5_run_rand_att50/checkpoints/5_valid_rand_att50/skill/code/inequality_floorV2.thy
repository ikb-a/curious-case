lemma inequality_floor:
  fixes r :: real
  assumes "n = floor r"
  shows "n \<le> r \<and> r < n + 1"
proof -
  from assms have "n \<le> r" by auto
  moreover have "r < n + 1"
  proof -
    have "n \<le> r" using assms by auto
    then show ?thesis using assms by auto
  qed
  ultimately show ?thesis by simp
qed