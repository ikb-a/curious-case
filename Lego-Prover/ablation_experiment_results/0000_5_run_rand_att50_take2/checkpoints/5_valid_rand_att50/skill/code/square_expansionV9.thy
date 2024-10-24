lemma square_expansion:
  fixes x y :: real
  shows "(x - y)^2 = x^2 - 2 * x * y + y^2"
proof -
  have "(x - y)^2 = (x - y) * (x - y)" by sos
  also have "... = x * x - 2 * x * y + y * y" by (simp add: algebra_simps)
  finally show ?thesis by sos
qed