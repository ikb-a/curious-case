lemma square_of_fraction:
  fixes a b :: real
  assumes "b > 0"
  shows "(a / b)^2 = a^2 / b^2"
  using assms by (simp add: power2_eq_square)