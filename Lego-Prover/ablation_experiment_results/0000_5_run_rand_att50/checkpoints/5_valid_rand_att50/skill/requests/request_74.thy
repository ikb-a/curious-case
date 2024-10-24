lemma slope_of_linear_function:
  fixes a b :: real
  assumes "f a = ma + c" "f b = mb + c" "ma = mb"
  shows "f a - f b = m * (a - b)"