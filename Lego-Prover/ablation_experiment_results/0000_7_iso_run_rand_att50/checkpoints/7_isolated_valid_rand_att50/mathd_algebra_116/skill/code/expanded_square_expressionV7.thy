lemma expanded_square_expression:
  fixes a b c :: real
  shows "(a - (b + c))^2 = a^2 - 2*a*(b + c) + (b + c)^2"
proof -
  have "(b + c)^2 = b^2 + 2*b*c + c^2" by sos
  then show ?thesis 
    by sos
qed