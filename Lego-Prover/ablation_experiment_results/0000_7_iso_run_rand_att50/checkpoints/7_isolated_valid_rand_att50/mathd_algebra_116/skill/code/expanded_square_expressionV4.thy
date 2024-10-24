lemma expanded_square_expression:
  fixes a b c :: real
  shows "(a + b + c)^2 = a^2 + b^2 + c^2 + 2*a*b + 2*a*c + 2*b*c"
proof -
  have "(a + b + c)^2 = (a + (b + c))^2" by sos
  then show ?thesis
    by sos
qed