lemma simplify_expression:
  fixes a b c d :: real
  shows "(a - b)^2 = a^2 - 2*a*b + b^2"
  using square_expansion by simp