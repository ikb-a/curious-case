lemma convergence_of_nested_radicals:
  fixes x :: real
  assumes "x >= 0"
  shows "filterlim (\<lambda>n. u n) at_top (nhds L) \<Longrightarrow> L = sqrt (x + L)"