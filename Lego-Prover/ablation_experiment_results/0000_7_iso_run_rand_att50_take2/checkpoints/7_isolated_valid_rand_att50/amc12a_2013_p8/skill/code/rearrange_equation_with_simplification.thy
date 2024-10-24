lemma rearrange_equation_with_simplification:
  fixes x y :: real
  assumes "x + 2/x = y + 2/y"
  shows "x - y = (2/y - 2/x)"
proof -
  have "x + 2/x - (y + 2/y) = 0" using assms by simp
  hence "x - y = 2/y - 2/x" by (simp add: field_simps)
  thus ?thesis by simp
qed