lemma isolate_variable:
  fixes x y :: real
  assumes "x + 2/x = y + 2/y"
  shows "x - y = (2 * (x - y)) / (x * y)"
proof -
  have "x + 2/x - (y + 2/y) = 0" using assms by auto
  hence "x - y + (2/x - 2/y) = 0" by (simp add: algebra_simps)
  thus ?thesis by sos
qed