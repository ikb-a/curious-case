lemma expression_square_nonneg:
  fixes x y :: real
  shows "((x * y) - 1)^2 + (x + y)^2 >= 0"
proof -
  let ?E = "((x * y) - 1)^2 + (x + y)^2"
  have "((x * y) - 1)^2 = (x^2 * y^2 - 2 * x * y + 1)" by sos
  have "(x + y)^2 = x^2 + 2 * x * y + y^2" by sos
  have "?E = (x^2 * y^2 - 2 * x * y + 1) + (x^2 + 2 * x * y + y^2)"
    by sos
  have "?E = x^2 * y^2 + x^2 + y^2 + 1" by sos
  have "x^2 * y^2 >= 0" by (simp add: mult_nonneg_nonneg)
  have "x^2 >= 0" by auto
  have "y^2 >= 0" by auto
  thus ?thesis using `x^2 * y^2 >= 0` `x^2 >= 0` `y^2 >= 0` by auto
qed