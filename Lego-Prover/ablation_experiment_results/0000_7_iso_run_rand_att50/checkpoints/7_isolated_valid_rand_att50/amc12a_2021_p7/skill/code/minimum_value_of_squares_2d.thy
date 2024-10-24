lemma minimum_value_of_squares_2d:
  fixes x y :: real
  shows "x^2 + y^2 \<ge> 0"
proof -
  have "x^2 \<ge> 0" by (simp add: power2_eq_square)
  have "y^2 \<ge> 0" by (simp add: power2_eq_square)
  thus ?thesis 
    by (simp add: add_nonneg_nonneg)
qed