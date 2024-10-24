lemma minimum_value_of_polynomial:
  fixes x y :: real
  shows "x^2 + y^2 + (x * y)^2 + (x + y)^2 >= 0"
proof -
  have "x^2 >= 0" by (simp add: power2_eq_square)
  have "y^2 >= 0" by (simp add: power2_eq_square)
  have "(x * y)^2 >= 0" by (simp add: power2_eq_square)
  have "(x + y)^2 >= 0" by (simp add: power2_eq_square)
  then have "x^2 + y^2 + (x * y)^2 + (x + y)^2 >= 0" 
    by (simp add: add_nonneg_nonneg add_nonneg_nonneg)
  thus ?thesis 
    by (simp add: add_nonneg_nonneg)
qed