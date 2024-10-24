lemma expanded_square_expression:
  fixes a b :: real
  shows "(a - b)^2 = a^2 - 2*a*b + b^2"
proof -
  have "(a - b) * (a - b) = a * a - 2 * a * b + b * b" 
    by sos
  thus ?thesis by sos
qed