lemma square_expansion_with_var:
  fixes a b c d :: real
  shows "(a - b)^2 + (c - d)^2 = a^2 - 2*a*b + b^2 + c^2 - 2*c*d + d^2"
proof -
  have "(a - b)^2 = a^2 - 2*a*b + b^2" by (simp add: square_expansion_general)
  moreover have "(c - d)^2 = c^2 - 2*c*d + d^2" by (simp add: square_expansion_general)
  ultimately show ?thesis by simp
qed