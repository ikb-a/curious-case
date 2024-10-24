lemma expanded_square_expression:
  fixes a b c :: real
  shows "(a - b + c)^2 = a^2 - 2*a*b + b^2 + 2*(a-b)*c + c^2"
proof -
  have "(a - b + c)^2 = ((a - b) + c)^2" by simp
  also have "... = (a - b)^2 + 2*(a - b)*c + c^2" by sos
  also have "... = (a^2 - 2*a*b + b^2) + 2*(a - b)*c + c^2" by sos
  finally show ?thesis by sos
qed