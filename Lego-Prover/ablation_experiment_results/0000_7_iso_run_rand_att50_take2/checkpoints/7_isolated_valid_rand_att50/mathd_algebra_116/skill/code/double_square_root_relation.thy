lemma double_square_root_relation:
  fixes x y :: real
  assumes "x \<ge> 0" "y \<ge> 0"
  shows "sqrt(2 * (x^2 + y^2)) = sqrt(2) * sqrt(x^2 + y^2)"
  using assms by (metis real_sqrt_mult)