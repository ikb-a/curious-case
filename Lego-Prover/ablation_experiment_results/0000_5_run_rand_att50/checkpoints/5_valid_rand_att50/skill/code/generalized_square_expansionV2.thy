lemma generalized_square_expansion:
  fixes a b c :: real
  shows "(a - b + c)^2 = a^2 - 2*a*b + b^2 + 2*c*(a - b) + c^2"
proof -
  have "(a - b + c)^2 = (a - b)^2 + 2*(a - b)*c + c^2"
    by sos
  also have "... = (a^2 - 2*a*b + b^2) + 2*c*(a - b) + c^2"
    by sos
  finally show ?thesis by simp
qed