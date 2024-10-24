lemma linear_function_slope:
  fixes f :: "real \<Rightarrow> real"
  assumes "\<forall> x. f x = m * x + c"
  shows "f (x + d) - f x = m * d"