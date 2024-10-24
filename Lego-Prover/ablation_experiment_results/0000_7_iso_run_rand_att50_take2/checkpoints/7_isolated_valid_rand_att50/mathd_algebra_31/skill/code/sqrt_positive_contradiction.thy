lemma sqrt_positive_contradiction:
  fixes a :: real
  assumes "a > 0"
  shows "sqrt a > 0"
proof -
  have "sqrt a = 0 \<Longrightarrow> a < 0" using assms by auto
  thus ?thesis using assms by auto
qed