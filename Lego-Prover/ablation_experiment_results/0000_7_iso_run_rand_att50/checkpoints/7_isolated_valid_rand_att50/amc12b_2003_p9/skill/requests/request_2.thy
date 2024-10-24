lemma linear_function_difference:
  fixes m c :: real and f :: "real \<Rightarrow> real"
  assumes "\<forall> x. f x = m * x + c"
    and "f 6 - f 2 = 12"
  shows "f 12 - f 2 = 10 * m"