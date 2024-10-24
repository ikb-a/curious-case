lemma real_square_root_positive:
  fixes a :: real
  assumes "a >= 0"
  shows "sqrt a >= 0"
proof -
  have "sqrt a = 0 \<longleftrightarrow> a = 0" by auto
  moreover have "a = 0 \<longrightarrow> sqrt a = 0" by (simp add: assms)
  ultimately show ?thesis using assms by auto
qed