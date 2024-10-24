lemma binomial_expansion:
  fixes a b :: real
  shows "(a + b)^2 = a^2 + 2 * a * b + b^2"
proof -
  have lhs: "(a + b)^2 = (a + b) * (a + b)" by sos
  also have "... = a * (a + b) + b * (a + b)" by sos
  also have "... = a * a + a * b + b * a + b * b" by (simp add: algebra_simps)
  also have "... = a^2 + 2 * a * b + b^2" by sos
  finally show ?thesis by simp
qed