lemma expand_polynomial:
  fixes a b :: real
  shows "(a + b)^2 = a^2 + 2 * a * b + b^2"
proof -
  have "(a + b)^2 = (a + b) * (a + b)" by sos
  then have "... = a * a + a * b + b * a + b * b" by (simp add: algebra_simps)
  then show ?thesis by sos
qed