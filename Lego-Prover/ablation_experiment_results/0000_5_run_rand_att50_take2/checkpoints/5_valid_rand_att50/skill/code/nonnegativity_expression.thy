lemma nonnegativity_expression:
  fixes x y :: real
  shows "((x * y) - 1)^2 + (x + y)^2 >= 1"
proof -
  let ?E = "((x * y) - 1)^2 + (x + y)^2"
  have "x^2 * y^2 >= 0" by auto
  have "x^2 >= 0" by auto
  have "y^2 >= 0" by auto
  have "?E = x^2 * y^2 + x^2 + y^2 + 1" using product_sum_expression by simp
  have "?E >= 1" using `x^2 * y^2 >= 0` by sos
  thus ?thesis by auto
qed