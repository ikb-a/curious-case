lemma rearrange_equation_simplified:
  fixes x y :: real
  assumes "x + 2/x = y + 2/y"
  shows "x - y = (2/y - 2/x)"
  using rearrange_equation_general[of x y 2] assms by simp