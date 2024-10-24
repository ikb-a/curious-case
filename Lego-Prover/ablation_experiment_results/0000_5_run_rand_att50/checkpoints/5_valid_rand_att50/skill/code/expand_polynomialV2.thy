lemma expand_polynomial:
  fixes x y :: real
  shows "((x * y) - 1)^2 + (x + y)^2 = x^2 * y^2 + x^2 + y^2 + 1"
proof -
  let ?lhs = "((x * y) - 1)^2 + (x + y)^2"
  let ?rhs = "x^2 * y^2 + x^2 + y^2 + 1"
  have lhs_expansion: "?lhs = (x * y - 1)^2 + (x + y)^2" 
    by (simp add: power2_eq_square)
  have first_part: "(x * y - 1)^2 = (x * y)^2 - 2 * (x * y) + 1" 
    by sos
  have second_part: "(x + y)^2 = x^2 + 2 * x * y + y^2" 
    by sos
  have "?lhs = ((x * y)^2 - 2 * (x * y) + 1) + (x^2 + 2 * x * y + y^2)"
    using first_part second_part by simp
  have "?lhs = (x * y)^2 + x^2 + y^2 + (2 * x * y - 2 * (x * y)) + 1"
    by sos
  have "?lhs = (x * y)^2 + x^2 + y^2 + 1"
    by sos
  show ?thesis
    using `?lhs = (x * y)^2 + x^2 + y^2 + 1` by (simp add: algebra_simps)
qed