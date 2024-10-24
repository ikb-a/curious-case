lemma equality_at_zero:
  fixes x y :: real
  shows "(x * y - 1)^2 + (x + y)^2 = 1" if "x = 0" and "y = 0"
  using that by auto