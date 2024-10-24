lemma trivial_inequality:
  fixes a b :: real
  shows "0 \<le> a^2 + b^2"
proof -
  have "0 \<le> a^2" and "0 \<le> b^2" 
    by auto
  then have "0 + 0 \<le> a^2 + b^2" 
    by (simp add: add_nonneg_nonneg)
  thus ?thesis by simp
qed