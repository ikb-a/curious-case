lemma square_expansion_generalized:
  fixes a b c d :: real
  shows "(a - b + c - d)^2 = a^2 - 2*a*b + b^2 + c^2 - 2*c*d + d^2 + 2*(a - b)*(c - d)"
proof -
  have "(a - b + c - d)^2 = (a - b)^2 + (c - d)^2 + 2*(a - b)*(c - d)"
    by sos
  also have "... = (a^2 - 2*a*b + b^2) + (c^2 - 2*c*d + d^2) + 2*(a - b)*(c - d)"
    by sos
  finally show ?thesis by simp
qed