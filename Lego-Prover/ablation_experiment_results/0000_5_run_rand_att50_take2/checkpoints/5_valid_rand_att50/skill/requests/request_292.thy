lemma rational_operations:
  fixes a b c d :: real
  assumes "a > 0" "b > 0" "c > 0" "d > 0"
  shows "(a/b) + (c/d) = (ad + bc) / (bd)"