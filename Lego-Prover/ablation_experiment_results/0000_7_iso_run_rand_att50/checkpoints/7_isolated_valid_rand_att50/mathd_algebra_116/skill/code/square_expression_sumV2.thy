lemma square_expression_sum:
  fixes a b c d :: real
  shows "(a + b - c - d)^2 = a^2 + b^2 + c^2 + d^2 + 2*a*b - 2*a*c - 2*a*d - 2*b*c - 2*b*d + 2*c*d"
proof -
  have "(a + b - c - d)^2 = ((a + b) - (c + d))^2" by sos
  also have "... = (a + b)^2 - 2*(a + b)*(c + d) + (c + d)^2" by sos
  also have "... = (a^2 + 2*a*b + b^2) - 2*(a*c + a*d + b*c + b*d) + (c^2 + 2*c*d + d^2)" 
    by sos
  finally show ?thesis by simp
qed