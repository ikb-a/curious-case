lemma rearrange_equation_with_division_multiple:
  fixes x y z :: real
  assumes "x + 2/x + z = y + 2/y + z"
  shows "x - y = (2/y - 2/x)"
proof -
  have "x + 2/x + z - (y + 2/y + z) = 0" using assms by simp
  then have "x - y = (2/y - 2/x)" by simp
  thus ?thesis by simp
qed