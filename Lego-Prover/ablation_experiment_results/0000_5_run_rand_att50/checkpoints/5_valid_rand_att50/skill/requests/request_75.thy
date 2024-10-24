lemma change_in_linear_function:
  fixes a b :: real and m c :: real
  assumes "f x = m * x + c"
  shows "f(b) - f(a) = m * (b - a)"