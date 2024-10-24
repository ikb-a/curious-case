lemma rearrange_equation_with_product:
  fixes x y z :: real
  assumes "x + 2/x = y + 2/y"
  shows "(x - y) * (1 - (2/(x * y))) = 0"
proof -
  have "x - y = (2/y - 2/x)" using rearrange_equation_with_factor assms by simp
  then show ?thesis using assms by sos
qed