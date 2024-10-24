fun sqrt_sum_squares :: "real list \<Rightarrow> real" where
  "sqrt_sum_squares [] = 0" |
  "sqrt_sum_squares (x # xs) = sqrt(x^2 + sqrt_sum_squares xs^2)"