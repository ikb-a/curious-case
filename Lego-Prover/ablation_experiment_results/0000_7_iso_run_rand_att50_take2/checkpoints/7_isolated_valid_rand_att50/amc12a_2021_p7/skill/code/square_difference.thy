lemma square_difference:
  fixes a b :: real
  shows "(a - b)^2 = a^2 - 2 * a * b + b^2"
proof -
  have "(a - b) * (a - b) = a * (a - b) - b * (a - b)"
    by (simp add: algebra_simps)
  also have "... = a^2 - a * b - b * a + b^2"
    by sos
  also have "... = a^2 - 2 * a * b + b^2"
    by (simp add: algebra_simps)
  finally show ?thesis by sos
qed