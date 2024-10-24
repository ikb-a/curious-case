lemma solve_linear_system:
  fixes x y :: nat
  assumes "x + y = n" "a * x + b * y = m"
  shows "x = (m - b * (n - x)) / a"