lemma sqrt_fraction:
  fixes a b :: real
  assumes "b > 0"
  shows "sqrt(a / b) = sqrt(a) / sqrt(b)"