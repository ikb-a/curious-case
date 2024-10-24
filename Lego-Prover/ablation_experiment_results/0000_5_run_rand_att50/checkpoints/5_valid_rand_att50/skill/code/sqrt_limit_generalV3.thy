lemma sqrt_limit_general:
  fixes x y :: real
  assumes "y = sqrt(x + y)" "y > 0"
  shows "x = y^2 - y"
proof -
  have "y^2 = x + y" using assms(1) by (metis assms(2) less_eq_real_def real_sqrt_eq_iff real_sqrt_unique)
  thus ?thesis by (simp add: assms(2) field_simps)
qed