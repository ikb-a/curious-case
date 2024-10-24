lemma convergence_of_nested_sqrt:
  fixes x :: real
  assumes "x >= 0"
  shows "(\<lambda>n. sqrt (x + u n)) \<longlongrightarrow> sqrt (x + sqrt (x + ...))"