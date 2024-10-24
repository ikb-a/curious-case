lemma sqrt_nonneg_sqrt_positive:
  fixes a :: real
  assumes "a >= 0"
  shows "sqrt a = 0 \<longleftrightarrow> a = 0"
proof -
  have "sqrt a = 0 \<longleftrightarrow> a = 0"
    by auto
  thus ?thesis by simp
qed