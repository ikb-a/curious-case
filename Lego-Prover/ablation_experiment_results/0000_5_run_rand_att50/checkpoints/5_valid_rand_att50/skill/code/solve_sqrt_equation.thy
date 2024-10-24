lemma solve_sqrt_equation:
  fixes x :: real
  assumes "y = sqrt(x + 9)" and "y > 0"
  shows "x = y^2 - 9"
proof -
  have "y^2 = x + 9" using assms(1) by (metis assms(2) less_eq_real_def real_sqrt_eq_iff real_sqrt_unique)
  then show ?thesis by simp
qed