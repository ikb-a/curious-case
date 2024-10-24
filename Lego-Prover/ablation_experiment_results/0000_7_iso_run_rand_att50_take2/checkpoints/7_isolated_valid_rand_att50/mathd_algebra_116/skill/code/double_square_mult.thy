lemma double_square_mult:
  fixes x y :: real
  shows "2 * (x * y) = (x + y)^2 - (x^2 + y^2)"
proof -
  have "(x + y)^2 = x^2 + 2 * x * y + y^2" by sos
  thus ?thesis by simp
qed