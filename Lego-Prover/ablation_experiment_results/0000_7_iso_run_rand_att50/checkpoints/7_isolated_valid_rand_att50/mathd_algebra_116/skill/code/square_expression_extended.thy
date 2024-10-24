lemma square_expression_extended:
  fixes a b c :: real
  shows "(a - b)^2 + c^2 = a^2 - 2*a*b + b^2 + c^2"
proof -
  have "(a - b)^2 = a^2 - 2*a*b + b^2" by sos
  thus ?thesis by simp
qed