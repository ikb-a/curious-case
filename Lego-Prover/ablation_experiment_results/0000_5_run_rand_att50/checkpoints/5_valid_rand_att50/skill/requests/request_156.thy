lemma simplify_square_root_expression:
  fixes a b :: real
  assumes "a > 0" "b > 0"
  shows "sqrt (a^2 + b^2) = sqrt a^2 + sqrt b^2"