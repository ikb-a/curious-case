lemma square_expansion:
  fixes x y :: real
  shows "(x - y)^2 = x^2 - 2 * x * y + y^2"
proof -
  have "(x - y) * (x - y) = x * x - 2 * x * y + y * y" by sos
  thus ?thesis by sos
qed