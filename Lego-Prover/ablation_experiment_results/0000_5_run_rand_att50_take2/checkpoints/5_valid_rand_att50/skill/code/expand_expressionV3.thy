lemma expand_expression:
  fixes x y :: real
  shows "((x * y) - 1)^2 + (x + y)^2 = (x^2 * y^2) + (x^2) + (y^2) + 1"
proof -
  have "((x * y) - 1)^2 = (x^2 * y^2) - 2 * (x * y) + 1" 
    by sos
  moreover have "(x + y)^2 = x^2 + 2 * (x * y) + y^2" 
    by sos
  ultimately show ?thesis 
    by (simp add: algebra_simps)
qed