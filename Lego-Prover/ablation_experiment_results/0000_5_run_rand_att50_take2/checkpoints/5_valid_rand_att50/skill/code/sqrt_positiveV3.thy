lemma sqrt_positive:
  fixes x :: real
  assumes "x >= 0"
  shows "sqrt x >= 0"
proof -
  have "sqrt x ^ 2 = x" using assms by (simp add: sqrt_def)
  then have "sqrt x ^ 2 >= 0" using assms by auto
  moreover have "sqrt x >= 0" using assms by (simp add: sqrt_def)
  ultimately show ?thesis by auto
qed