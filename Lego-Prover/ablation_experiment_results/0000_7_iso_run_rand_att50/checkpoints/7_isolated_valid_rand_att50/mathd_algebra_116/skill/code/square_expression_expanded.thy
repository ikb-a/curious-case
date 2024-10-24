lemma square_expression_expanded:
  fixes a b c :: real
  shows "(a + b - c)^2 = a^2 + 2*a*b - 2*a*c + b^2 - 2*b*c + c^2"
proof -
  have "(a + b - c)^2 = (a + b)^2 - 2*(a + b)*c + c^2" by sos
  also have "... = a^2 + 2*a*b + b^2 - 2*(a + b)*c + c^2" by sos
  finally show ?thesis by sos
qed