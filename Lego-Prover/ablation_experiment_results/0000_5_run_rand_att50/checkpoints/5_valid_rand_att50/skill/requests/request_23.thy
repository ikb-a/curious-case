lemma simplify_sqrt:
  fixes a b :: real
  assumes "a > 0" "b > 0"
  shows "sqrt(a) * sqrt(b) = sqrt(a * b)"