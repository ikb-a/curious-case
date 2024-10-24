lemma square_expression_generalized_with_c:
  fixes a b c :: real
  shows "(a - b + c)^2 = a^2 - 2*a*b + b^2 + 2*c*(a - b) + c^2"
  by sos