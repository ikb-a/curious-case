lemma sqrt_properties:
  fixes x y :: real
  assumes "x >= 0" "y >= 0"
  shows "sqrt(x) + sqrt(y) >= sqrt(x + y)"
proof -
  have "sqrt(x)^2 + sqrt(y)^2 = x + y" using assms by (simp add: power2_eq_square)
  moreover have "2 * sqrt(x) * sqrt(y) >= 0" using assms by (simp add: mult_nonneg_nonneg)
  ultimately have "(sqrt(x) + sqrt(y))^2 = x + y + 2 * sqrt(x) * sqrt(y)" by (smt (verit) power2_sum)
  hence "(sqrt(x) + sqrt(y))^2 >= x + y" by (simp add: assms)
  then show ?thesis by (metis assms(1) assms(2) sqrt_add_le_add_sqrt)
qed