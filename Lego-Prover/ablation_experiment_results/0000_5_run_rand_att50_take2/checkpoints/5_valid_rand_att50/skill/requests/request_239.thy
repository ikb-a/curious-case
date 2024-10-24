lemma simplify_sqrt_expression:
  fixes a b :: real
  assumes "a > 0" "b > 0"
  shows "sqrt(a) / b = sqrt(a / (b^2))"