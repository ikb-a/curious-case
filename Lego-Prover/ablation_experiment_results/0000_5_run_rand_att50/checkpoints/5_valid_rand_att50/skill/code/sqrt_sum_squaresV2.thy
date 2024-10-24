lemma sqrt_sum_squares:
  fixes x y :: real
  assumes "x >= 0" "y >= 0"
  shows "sqrt (x^2 + y^2) * sqrt (x^2 + y^2) = x^2 + y^2"
proof -
  have "sqrt (x^2 + y^2) * sqrt (x^2 + y^2) = x^2 + y^2" using assms by auto
  thus ?thesis by simp
qed