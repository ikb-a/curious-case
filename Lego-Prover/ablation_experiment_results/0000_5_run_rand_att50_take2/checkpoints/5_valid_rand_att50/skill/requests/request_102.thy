lemma limit_of_nested_radicals:
  fixes x :: real
  assumes "u (n + 1) = sqrt (x + u n)"
  shows "filterlim u at_top (nhds L) \<Longrightarrow> L = sqrt (x + L)"