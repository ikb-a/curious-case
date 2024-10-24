lemma sqrt_non_negative:
  fixes a :: real
  assumes "a >= 0"
  shows "sqrt a >= 0"
proof -
  have "sqrt a = 0 \<longleftrightarrow> a = 0" by auto
  thus ?thesis using assms by (cases "a = 0") auto
qed