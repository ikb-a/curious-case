lemma trivial_inequality:
  fixes a b :: real
  assumes "a >= 0" "b >= 0"
  shows "a + b >= 0"
proof -
  from assms have "0 \<le> a" and "0 \<le> b" 
    by auto
  then have "0 + 0 \<le> a + b" 
    by (simp add: add_nonneg_nonneg)
  thus ?thesis 
    by simp
qed