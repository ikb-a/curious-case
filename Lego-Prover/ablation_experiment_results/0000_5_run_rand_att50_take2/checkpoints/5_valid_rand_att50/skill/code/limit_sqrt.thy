lemma limit_sqrt:
  fixes x :: real
  assumes "x >= 0"
  shows "sqrt x = 9 \<longleftrightarrow> x = 81"
proof -
  have "sqrt x = 9 \<longleftrightarrow> x = 9^2" 
    by (metis abs_numeral assms real_sqrt_abs real_sqrt_pow2)
  thus ?thesis by simp
qed