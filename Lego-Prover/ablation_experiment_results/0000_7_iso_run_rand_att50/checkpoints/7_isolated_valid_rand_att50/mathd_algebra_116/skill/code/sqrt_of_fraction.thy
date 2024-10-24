lemma sqrt_of_fraction:
  fixes a b :: real
  assumes "b > 0"
  shows "sqrt(a / b) = sqrt(a) / sqrt(b)"
  using assms by (metis real_sqrt_divide)