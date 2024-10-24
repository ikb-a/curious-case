lemma square_expansion_with_coefficients:
  fixes a b c d :: real
  shows "(a - b + c*d)^2 = a^2 - 2*a*b + b^2 + 2*(c*d)*(a - b) + (c*d)^2"
proof -
  have "(a - b + c*d)^2 = ((a - b) + c*d)^2" by simp
  also have "... = (a - b)^2 + 2*(a - b)*(c*d) + (c*d)^2" by sos
  also have "... = (a^2 - 2*a*b + b^2) + 2*(c*d)*(a - b) + (c*d)^2" by sos
  finally show ?thesis by sos
qed