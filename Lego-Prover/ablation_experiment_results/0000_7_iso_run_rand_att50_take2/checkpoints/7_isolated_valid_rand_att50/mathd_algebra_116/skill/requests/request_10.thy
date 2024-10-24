lemma simplify_square_root_expression:
  fixes a b :: real
  assumes "a ≥ 0"
  shows "sqrt(a) * sqrt(b) = sqrt(a * b)"