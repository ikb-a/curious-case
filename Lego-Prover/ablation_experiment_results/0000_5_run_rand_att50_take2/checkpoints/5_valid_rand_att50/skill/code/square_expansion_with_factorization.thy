lemma square_expansion_with_factorization:
  fixes x y :: real
  shows "(x - y)^2 = x^2 - 2 * x * y + y^2"
proof -
  have "(x - y)^2 = (x - y) * (x - y)" by sos
  also have "... = x * (x - y) - y * (x - y)" by sos
  also have "... = x^2 - y * x - y * x + y^2" by sos
  also have "... = x^2 - 2 * x * y + y^2" by simp
  finally show ?thesis .
qed