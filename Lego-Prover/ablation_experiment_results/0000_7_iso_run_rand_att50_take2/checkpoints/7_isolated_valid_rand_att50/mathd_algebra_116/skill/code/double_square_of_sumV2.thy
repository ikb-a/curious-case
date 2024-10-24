lemma double_square_of_sum:
  fixes x y :: real
  shows "2 * (x + y)^2 = 2 * (x^2 + 2 * x * y + y^2)"
proof -
  have "(x + y)^2 = x^2 + 2 * x * y + y^2" by sos
  then show ?thesis by (simp add: distrib_right)
qed