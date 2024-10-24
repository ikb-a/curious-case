lemma binomial_expansion:
  fixes a b :: real
  shows "(a + b)^2 = a^2 + 2 * a * b + b^2"
proof -
  have lhs: "(a + b)^2 = (a + b) * (a + b)" by (simp add: power2_eq_square)
  also have "... = a * (a + b) + b * (a + b)" by sos
  also have "... = a * a + a * b + b * a + b * b" by sos
  also have "... = a^2 + b^2 + a*b + b*a" by sos
  also have "... = a^2 + 2 * a * b + b^2" by (simp add: ac_simps)
  finally show ?thesis by simp
qed