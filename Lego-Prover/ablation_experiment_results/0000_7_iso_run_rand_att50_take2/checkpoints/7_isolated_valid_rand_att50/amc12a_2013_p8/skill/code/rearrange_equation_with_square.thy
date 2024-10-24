lemma rearrange_equation_with_square:
  fixes x y :: real
  assumes "x + 2/x = y + 2/y"
  shows "(x - y)^2 = (2/y - 2/x)^2"
proof -
  have "x - y = (2/y - 2/x)" using rearrange_equation_with_simplification assms by auto
  thus ?thesis by (simp add: power2_eq_square)
qed