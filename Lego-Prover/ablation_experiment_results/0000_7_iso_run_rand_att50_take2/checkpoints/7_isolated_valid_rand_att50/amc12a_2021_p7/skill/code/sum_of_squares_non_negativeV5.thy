lemma sum_of_squares_non_negative:
  fixes x y :: real
  shows "x^2 + y^2 \<ge> 0"
proof -
  have "0 \<le> x^2" and "0 \<le> y^2" using non_negative_squares by auto
  thus ?thesis by (simp add: add_nonneg_nonneg)
qed