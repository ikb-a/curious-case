lemma square_expansion_with_coefficients:
  fixes a b k :: real
  shows "(k*a - b)^2 = k^2 * a^2 - 2*k*a*b + b^2"
proof -
  have "(k*a - b)^2 = (k*a)^2 - 2*(k*a)*b + b^2" by sos
  also have "... = k^2 * a^2 - 2*k*a*b + b^2" by (simp add: algebra_simps)
  finally show ?thesis .
qed