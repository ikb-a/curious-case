lemma double_square_property:
  fixes x :: real
  shows "2 * x^2 = (x * x) + (x * x)"
proof -
  have "2 * x^2 = x^2 + x^2" by (simp add: algebra_simps)
  then show ?thesis by sos
qed