lemma sum_of_squares_non_negative:
  fixes x y :: real
  shows "x^2 + y^2 \<ge> 0"
proof -
  have "0 \<le> x^2" using non_negative_square by simp
  have "0 \<le> y^2" using non_negative_square by simp
  thus "x^2 + y^2 \<ge> 0" by (simp add: add_nonneg_nonneg)
qed