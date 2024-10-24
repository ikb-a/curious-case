lemma square_expression_combined:
  fixes a b c :: real
  shows "(a - b)^2 + (a - c)^2 = 2*a^2 - 2*a*(b + c) + (b^2 + c^2)"
proof -
  have "(a - b)^2 = a^2 - 2*a*b + b^2" by sos
  have "(a - c)^2 = a^2 - 2*a*c + c^2" by sos
  thus ?thesis by sos
qed