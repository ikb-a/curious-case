lemma sum_of_squares:
  fixes x y :: real
  shows "x^2 + y^2 = (x + y)^2 - 2 * x * y"
proof -
  have "(x + y)^2 = x^2 + 2 * x * y + y^2" by sos
  then show ?thesis by (simp add: algebra_simps)
qed