lemma sqrt_sum_nonneg:
  fixes a b :: real
  assumes "a >= 0" "b >= 0"
  shows "sqrt(a + b) > 0 \<longleftrightarrow> (a + b) > 0"
proof -
  have "sqrt (a + b) > 0 \<longleftrightarrow> a + b > 0"
    by auto
  thus ?thesis by simp
qed