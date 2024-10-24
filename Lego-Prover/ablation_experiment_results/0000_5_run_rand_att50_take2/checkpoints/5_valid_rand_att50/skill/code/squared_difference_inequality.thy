lemma squared_difference_inequality:
  fixes a b :: real
  shows "(a - b)^2 >= 0"
proof -
  have "(a - b)^2 = a^2 - 2*a*b + b^2" by sos
  thus ?thesis by sos
qed