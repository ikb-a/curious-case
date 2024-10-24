lemma rearranged_expression_simplified:
  fixes x y :: real
  assumes "x + 2/x = y + 2/y" "x > 0" "y > 0"
  shows "x - y = 2 * (1/y - 1/x)"
proof -
  have "x + 2/x - (y + 2/y) = 0" using assms by simp
  then have "x - y = (2/y - 2/x)" by simp
  thus ?thesis by (simp add: field_simps)
qed