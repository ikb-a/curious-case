lemma expression_nonneg_with_assumptions:
  fixes x y :: real
  assumes "1 \<le> x" "1 \<le> y"
  shows "((x * y) - 1)^2 + (x + y)^2 >= 1"
proof -
  let ?E = "((x * y) - 1)^2 + (x + y)^2"
  have "((x * y) - 1)^2 = (x^2 * y^2 - 2 * x * y + 1)" by sos
  have "(x + y)^2 = x^2 + 2 * x * y + y^2" by sos
  have "?E = (x^2 * y^2 - 2 * x * y + 1) + (x^2 + 2 * x * y + y^2)"
    by sos
  have "?E = x^2 * y^2 + x^2 + y^2 + 1" by sos
  have "x^2 * y^2 >= 0" by (auto simp: assms)
  have "x^2 >= 0" by (auto simp: assms)
  have "y^2 >= 0" by (auto simp: assms)
  then have "x^2 + y^2 + x^2 * y^2 + 1 >= 1" by (simp add: algebra_simps)
  thus ?thesis by sos
qed