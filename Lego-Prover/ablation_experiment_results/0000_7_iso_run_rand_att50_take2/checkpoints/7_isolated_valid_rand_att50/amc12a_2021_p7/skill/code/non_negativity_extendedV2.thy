theorem non_negativity_extended:
  fixes x y :: real
  shows "x^2 + y^2 + (x * y)^2 >= 0"
proof -
  have "x^2 >= 0" and "y^2 >= 0" and "(x * y)^2 >= 0" 
    by (auto simp: non_negative_squares_generalized)
  thus "x^2 + y^2 + (x * y)^2 >= 0" 
    by (simp add: add_nonneg_nonneg)
qed