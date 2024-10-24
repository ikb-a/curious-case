lemma limit_sqrt_ndim:
  fixes x :: "real list"
  assumes "all_nonneg x"
  shows "sqrt (sum_list x) = 9 \<longleftrightarrow> sum_list x = 81"
proof -
  have "sqrt (sum_list x) = 9 \<longleftrightarrow> sum_list x = 9^2"
    by (metis real_sqrt_ge_0_iff real_sqrt_pow2 real_sqrt_unique zero_le_numeral)
  thus ?thesis by simp
qed