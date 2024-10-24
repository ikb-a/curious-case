lemma manipulate_equation:
  fixes x y :: real
  assumes "x + 2/x = y + 2/y"
  shows "x - y = (2/y - 2/x)"
proof -
  have "x + 2/x - (y + 2/y) = 0" using assms by simp
  then have "x - y + (2/x - 2/y) = 0" by (simp add: algebra_simps)
  thus ?thesis by (simp add: algebra_simps)
qed