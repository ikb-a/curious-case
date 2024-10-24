lemma generalized_square_expression:
  fixes a b c d :: real
  shows "(a - (b + c + d))^2 = a^2 - 2*a*(b + c + d) + (b + c + d)^2"
proof -
  have "(b + c + d)^2 = b^2 + c^2 + d^2 + 2*(b*c + c*d + b*d)" 
    by sos
  then show ?thesis 
    by sos
qed