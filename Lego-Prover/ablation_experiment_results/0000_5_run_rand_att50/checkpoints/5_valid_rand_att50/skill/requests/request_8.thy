lemma linear_function_slope:
  fixes m c :: real
  shows "(\<forall>x. f x = m * x + c) \<Longrightarrow> f(a) - f(b) = m * (a - b)"