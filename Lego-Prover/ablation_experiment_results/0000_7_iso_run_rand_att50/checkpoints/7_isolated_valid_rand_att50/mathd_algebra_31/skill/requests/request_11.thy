lemma nested_sqrt_convergence:
  fixes x :: real
  assumes "x > 0"
  shows "(\<lambda>n. sqrt (x + n)) \<longlongrightarrow> sqrt x"