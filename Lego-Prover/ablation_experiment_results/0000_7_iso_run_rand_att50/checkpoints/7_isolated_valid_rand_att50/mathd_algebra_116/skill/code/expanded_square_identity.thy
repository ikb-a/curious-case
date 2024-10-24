lemma expanded_square_identity:
  fixes a b c :: real
  shows "(a + b + c)^2 = a^2 + b^2 + c^2 + 2*a*b + 2*a*c + 2*b*c"
proof -
  have "(a + b + c)^2 = (a + (b + c))^2" by sos
  also have "... = a^2 + 2*a*(b + c) + (b + c)^2" by (simp add: square_expression_generalized)
  also have "... = a^2 + 2*a*b + 2*a*c + (b^2 + 2*b*c + c^2)" by sos
  finally show ?thesis by simp
qed