lemma double_square_inequality:
  fixes x y :: real
  assumes "x \<ge> 0" "y \<ge> 0"
  shows "(x + y)^2 \<ge> x^2 + y^2"
proof -
  have "(x + y)^2 = x^2 + 2 * x * y + y^2" by sos
  thus ?thesis using assms by (simp add: zero_le_mult_iff)
qed