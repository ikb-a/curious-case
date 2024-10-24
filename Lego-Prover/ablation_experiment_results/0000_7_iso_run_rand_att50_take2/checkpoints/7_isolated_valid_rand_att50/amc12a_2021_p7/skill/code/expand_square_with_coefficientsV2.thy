lemma expand_square_with_coefficients:
  fixes x y a b :: real
  shows "(a * x + b * y)^2 = a^2 * x^2 + 2 * a * b * x * y + b^2 * y^2"
proof -
  have "(a * x + b * y)^2 = (a * x + b * y) * (a * x + b * y)" by sos
  also have "... = a * x * (a * x + b * y) + b * y * (a * x + b * y)" by sos
  also have "... = a^2 * x^2 + a * b * x * y + b * a * y * x + b^2 * y^2" by sos
  also have "... = a^2 * x^2 + 2 * a * b * x * y + b^2 * y^2" by (simp add: algebra_simps)
  finally show ?thesis by simp
qed