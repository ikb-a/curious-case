lemma square_expression_sum:
  fixes a b c d :: real
  shows "(a - b)^2 + (c - d)^2 = a^2 - 2*a*b + b^2 + c^2 - 2*c*d + d^2"
proof -
  have "(a - b)^2 = a^2 - 2*a*b + b^2" by sos
  have "(c - d)^2 = c^2 - 2*c*d + d^2" by sos
  thus ?thesis by sos
qed