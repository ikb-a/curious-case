lemma rational_expression_simplification:
  fixes a b c d :: real
  assumes "b ≠ 0" "d ≠ 0"
  shows "(a/b) + (c/d) = (ad + bc) / (bd)"