lemma sqrt_positive_iff:
  fixes a :: real
  shows "sqrt a > 0 \<longleftrightarrow> a > 0"
proof -
  have "sqrt a > 0 \<Longrightarrow> a > 0"
    by auto
  moreover have "a > 0 \<Longrightarrow> sqrt a > 0"
    by auto
  ultimately show ?thesis by blast
qed