lemma sqrt_positive_general:
  fixes a :: real
  assumes "a > 0"
  shows "sqrt a > 0"
proof -
  have "sqrt a = 0 \<longleftrightarrow> a = 0" by auto
  then have "sqrt a > 0" using assms by simp
  thus ?thesis by simp
qed