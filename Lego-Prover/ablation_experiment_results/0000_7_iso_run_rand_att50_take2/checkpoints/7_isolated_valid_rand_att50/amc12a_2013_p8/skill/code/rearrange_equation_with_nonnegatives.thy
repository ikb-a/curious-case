lemma rearrange_equation_with_nonnegatives:
  fixes x y :: real
  assumes "x + 2/x = y + 2/y" "x > 0" "y > 0"
  shows "x - y = (2/y - 2/x)"
proof -
  have "x + 2/x - (y + 2/y) = 0" using assms(1) by simp
  hence "x - y = (2/y - 2/x)" by simp
  thus ?thesis by simp
qed