lemma nested_square_root:
  fixes x :: real
  assumes "sqrt(x + sqrt(x + sqrt(x + sqrt(x + ...))) = 9"
  shows "x = 72"