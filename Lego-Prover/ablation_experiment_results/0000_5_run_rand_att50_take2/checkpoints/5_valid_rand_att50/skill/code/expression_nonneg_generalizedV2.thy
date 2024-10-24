lemma expression_nonneg_generalized:
  fixes x y :: real
  shows "1 \<le> ((x * y) - 1)^2 + (x + y)^2"
proof -
  let ?E = "((x * y) - 1)^2 + (x + y)^2"
  have "((x * y) - 1)^2 = (x^2 * y^2 - 2 * x * y + 1)" by sos
  have "(x + y)^2 = x^2 + 2 * x * y + y^2" by sos
  have "?E = (x^2 * y^2 - 2 * x * y + 1) + (x^2 + 2 * x * y + y^2)"
    by sos
  hence "?E = x^2 * y^2 + x^2 + y^2 + 1" by (simp add: algebra_simps)
  have "x^2 * y^2 >= 0" by auto
  have "x^2 >= 0" by auto
  have "y^2 >= 0" by auto
  thus ?thesis using `?E = x^2 * y^2 + x^2 + y^2 + 1` by auto
qed