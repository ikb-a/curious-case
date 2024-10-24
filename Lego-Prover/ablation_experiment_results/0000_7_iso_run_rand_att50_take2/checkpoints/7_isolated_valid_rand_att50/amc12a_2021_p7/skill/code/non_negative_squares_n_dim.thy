lemma non_negative_squares_n_dim:
  fixes xs :: "real list"
  assumes "length xs > 0"
  shows "(\<Sum>x\<in>set xs. x^2) >= 0"
proof -
  have "x^2 >= 0" for x :: real by (simp add: power2_eq_square)
  then show ?thesis using assms by (simp add: sum_nonneg)
qed