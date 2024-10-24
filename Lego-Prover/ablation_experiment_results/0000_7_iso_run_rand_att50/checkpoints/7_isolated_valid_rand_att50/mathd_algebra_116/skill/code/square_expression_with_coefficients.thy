lemma square_expression_with_coefficients:
  fixes a b c d :: "'a::field"
  shows "(a - b)^2 + (c - d)^2 = (a^2 - 2*a*b + b^2) + (c^2 - 2*c*d + d^2)"
proof -
  have "(a - b)^2 = a^2 - 2*a*b + b^2" by (simp add: square_expression_general)
  have "(c - d)^2 = c^2 - 2*c*d + d^2" by (simp add: square_expression_general)
  thus ?thesis by (metis power2_eq_square square_expression_general)
qed