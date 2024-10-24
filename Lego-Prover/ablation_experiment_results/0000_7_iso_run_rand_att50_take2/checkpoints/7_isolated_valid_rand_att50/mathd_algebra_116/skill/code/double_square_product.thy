lemma double_square_product:
  fixes x y :: real
  shows "2 * (x * y) = (x + y)^2 - (x^2 + y^2)"
proof -
  have "(x + y)^2 = x^2 + 2 * x * y + y^2" by sos
  hence "(x + y)^2 - (x^2 + y^2) = 2 * x * y" by (simp)
  thus ?thesis by (simp add: mult.commute)
qed