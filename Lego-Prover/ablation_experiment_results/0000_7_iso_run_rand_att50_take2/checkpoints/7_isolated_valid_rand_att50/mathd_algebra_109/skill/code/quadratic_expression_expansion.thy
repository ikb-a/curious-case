lemma quadratic_expression_expansion:
  fixes a b :: real
  shows "(a + b)^2 = a^2 + 2 * a * b + b^2"
proof -
  have "a^2 + 2 * a * b + b^2 = (a + b)^2" by sos
  thus ?thesis by simp
qed