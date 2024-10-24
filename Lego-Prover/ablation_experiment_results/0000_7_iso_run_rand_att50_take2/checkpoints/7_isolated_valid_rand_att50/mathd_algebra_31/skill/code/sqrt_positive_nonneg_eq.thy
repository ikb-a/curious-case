lemma sqrt_positive_nonneg_eq:
  fixes a :: real
  assumes "a \<ge> 0"
  shows "sqrt a > 0 \<longleftrightarrow> a > 0"
proof -
  have "sqrt a > 0 \<longleftrightarrow> a > 0" 
    by auto
  thus ?thesis by simp
qed