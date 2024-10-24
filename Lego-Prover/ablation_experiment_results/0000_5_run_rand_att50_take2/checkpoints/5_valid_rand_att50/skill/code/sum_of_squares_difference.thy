lemma sum_of_squares_difference:
  fixes x y :: real
  assumes "x + y = c" "x - y = d"
  shows "x^2 + y^2 = (c^2 + d^2) / 2"
proof -
  have "x^2 + y^2 = (x + y)^2 - 2*x*y" by sos
  moreover have "x*y = ((x+y)^2 - (x-y)^2) / 4" using assms by sos
  ultimately show ?thesis
    using assms by (simp add: algebra_simps)
qed