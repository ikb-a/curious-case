lemma sqrt_nonneg:
  fixes a :: real
  assumes "a \<ge> 0"
  shows "sqrt a \<ge> 0"
proof -
  have "sqrt a = 0 \<longleftrightarrow> a = 0" by auto
  then show ?thesis
    using assms by (cases "a = 0") auto
qed