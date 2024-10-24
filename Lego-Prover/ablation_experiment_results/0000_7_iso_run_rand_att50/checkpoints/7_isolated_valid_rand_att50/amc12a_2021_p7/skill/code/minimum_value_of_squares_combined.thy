lemma minimum_value_of_squares_combined:
  fixes x y z :: real
  shows "x^2 + y^2 + z^2 + (x * y)^2 + (y * z)^2 + (z * x)^2 + (x + y + z)^2 >= 0"
proof -
  have "x^2 >= 0" by (simp add: power2_eq_square)
  have "y^2 >= 0" by (simp add: power2_eq_square)
  have "z^2 >= 0" by (simp add: power2_eq_square)
  have "(x * y)^2 >= 0" by (simp add: power2_eq_square)
  have "(y * z)^2 >= 0" by (simp add: power2_eq_square)
  have "(z * x)^2 >= 0" by (simp add: power2_eq_square)
  have "(x + y + z)^2 >= 0" by (simp add: power2_eq_square)
  then have "x^2 + y^2 + z^2 + (x * y)^2 + (y * z)^2 + (z * x)^2 + (x + y + z)^2 >= 0"
    by (simp add: add_nonneg_nonneg)
  thus ?thesis 
    by (simp add: add_nonneg_nonneg)
qed