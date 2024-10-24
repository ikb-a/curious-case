lemma trivial_inequality:
  fixes a b :: real
  shows "0 \<le> a^2 + b^2"
proof -
  have "0 \<le> a^2" 
    by auto 
  moreover have "0 \<le> b^2" 
    by auto
  ultimately show ?thesis 
    by (simp add: add_nonneg_nonneg)
qed