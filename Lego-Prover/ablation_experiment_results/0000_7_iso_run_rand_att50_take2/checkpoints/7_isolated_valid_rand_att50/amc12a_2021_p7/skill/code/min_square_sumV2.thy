lemma min_square_sum:
  fixes x y :: real
  shows "x^2 + y^2 \<ge> 0"
proof -
  have "0 \<le> x^2" by (simp add: power2_eq_square)
  have "0 \<le> y^2" by (simp add: power2_eq_square)
  moreover have "x^2 + y^2 \<ge> 0 + 0" using `0 \<le> x^2` `0 \<le> y^2`
    by (simp add: add_nonneg_nonneg)
  ultimately show ?thesis by simp
qed