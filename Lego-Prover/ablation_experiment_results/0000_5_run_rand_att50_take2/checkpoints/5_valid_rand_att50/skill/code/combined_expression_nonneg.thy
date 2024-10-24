lemma combined_expression_nonneg:
  fixes x y :: real
  shows "((x * y) - 1)^2 + (x + y)^2 \<ge> 1"
proof -
  let ?E = "((x * y) - 1)^2 + (x + y)^2"
  have "((x * y) - 1)^2 = (x^2 * y^2 - 2 * x * y + 1)" by sos
  have "(x + y)^2 = x^2 + 2 * x * y + y^2" by sos
  have "?E = (x^2 * y^2 - 2 * x * y + 1) + (x^2 + 2 * x * y + y^2)"
    by sos
  have "?E = x^2 * y^2 + x^2 + y^2 + 1" by sos
  hence "?E \<ge> 1" 
    using sum_of_squares_nonneg by (simp add: add_nonneg_nonneg)
  thus ?thesis by auto
qed