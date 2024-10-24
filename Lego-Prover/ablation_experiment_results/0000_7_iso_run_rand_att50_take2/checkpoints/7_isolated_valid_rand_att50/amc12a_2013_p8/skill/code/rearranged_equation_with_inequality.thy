lemma rearranged_equation_with_inequality:
  fixes x y :: real
  assumes "x + 2/x = y + 2/y" and "x > 0" and "y > 0"
  shows "x - y = (2/y - 2/x)"
proof -
  have "x + 2/x - (y + 2/y) = 0" using assms(1) by simp
  then have "x - y = (2/y - 2/x)" by (simp add: field_simps)
  thus ?thesis by simp
qed