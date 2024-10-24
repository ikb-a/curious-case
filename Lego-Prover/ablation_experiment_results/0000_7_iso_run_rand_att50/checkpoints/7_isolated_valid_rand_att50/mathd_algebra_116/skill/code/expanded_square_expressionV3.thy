lemma expanded_square_expression:
  fixes a b c :: real
  shows "(a - b - c)^2 = a^2 - 2*a*b - 2*a*c + b^2 + 2*b*c + c^2"
proof -
  have "a - b - c = (a - b) - c" by simp
  thus ?thesis by sos
qed