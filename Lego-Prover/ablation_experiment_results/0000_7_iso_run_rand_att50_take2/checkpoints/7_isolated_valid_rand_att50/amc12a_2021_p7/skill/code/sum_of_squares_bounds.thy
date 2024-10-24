lemma sum_of_squares_bounds:
  fixes x y :: real
  shows "x^2 + y^2 \<ge> 0"
proof -
  have "x^2 \<ge> 0" and "y^2 \<ge> 0" using non_negative_squares by auto
  thus "x^2 + y^2 \<ge> 0" by (simp add: add_nonneg_nonneg)
qed