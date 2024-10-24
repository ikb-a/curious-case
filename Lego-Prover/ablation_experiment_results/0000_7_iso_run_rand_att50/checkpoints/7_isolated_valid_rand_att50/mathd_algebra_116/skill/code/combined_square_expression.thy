lemma combined_square_expression:
  fixes a b c :: real
  shows "(a - b)^2 + (b - c)^2 + (c - a)^2 = 2*a^2 + 2*b^2 + 2*c^2 - 2*a*b - 2*b*c - 2*c*a"
proof -
  have " (a - b)^2 + (b - c)^2 + (c - a)^2 = (a^2 - 2*a*b + b^2) + (b^2 - 2*b*c + c^2) + (c^2 - 2*c*a + a^2)"
    by (simp add: extended_square_expression)
  thus ?thesis by (simp add: algebra_simps)
qed