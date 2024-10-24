theorem non_negativity_extended:
  fixes x y :: real
  assumes "x \<in> \<real>" and "y \<in> \<real>"
  shows "x^2 + y^2 + (x * y)^2 \<ge> 0"
proof -
  have "x^2 \<ge> 0" and "y^2 \<ge> 0" and "(x * y)^2 \<ge> 0" 
    by (auto simp: non_negative_squares_generalized)
  thus "x^2 + y^2 + (x * y)^2 \<ge> 0" 
    by (simp add: add_nonneg_nonneg)
qed