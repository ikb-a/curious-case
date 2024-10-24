lemma square_expression_composite:
  fixes a b c d :: real
  shows "(a + b + c + d)^2 = a^2 + b^2 + c^2 + d^2 + 2*(a*b + a*c + a*d + b*c + b*d + c*d)"
proof -
  have "a + b + c + d = (a + b) + (c + d)" by simp
  then have "(a + b + c + d)^2 = ((a + b) + (c + d))^2" by presburger
  also have "... = (a + b)^2 + (c + d)^2 + 2*(a + b)*(c + d)" by sos
  also have "... = (a^2 + 2*a*b + b^2) + (c^2 + 2*c*d + d^2) + 2*(a + b)*(c + d)" 
    by sos
  finally show ?thesis by sos
qed