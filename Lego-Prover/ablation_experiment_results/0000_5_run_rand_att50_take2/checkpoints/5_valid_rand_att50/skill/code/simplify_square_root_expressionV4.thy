lemma simplify_square_root_expression:
  fixes a b :: real
  shows "sqrt(a^2 - b^2) = sqrt((a - b)*(a + b))"
proof -
  have "a^2 - b^2 = (a - b) * (a + b)"
    by sos
  then show ?thesis 
    by (simp add: real_sqrt_mult)
qed