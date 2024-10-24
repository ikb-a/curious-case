lemma limit_sqrt_general:
  fixes x :: real
  assumes "x >= 0" and "k >= 0"
  shows "sqrt x = k \<longleftrightarrow> x = k^2"
proof -
  have "sqrt x = k \<longleftrightarrow> x = k^2" 
    by (metis assms(1) assms(2) real_sqrt_pow2_iff real_sqrt_unique)
  thus ?thesis by simp
qed