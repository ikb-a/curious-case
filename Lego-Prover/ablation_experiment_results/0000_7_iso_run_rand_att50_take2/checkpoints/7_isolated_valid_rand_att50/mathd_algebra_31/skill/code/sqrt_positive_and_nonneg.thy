lemma sqrt_positive_and_nonneg:
  fixes a :: real
  assumes "a >= 0"
  shows "sqrt a >= 0"
proof -
  have "sqrt a = 0 \<longleftrightarrow> a = 0" by auto
  thus "sqrt a >= 0" using assms by simp
qed