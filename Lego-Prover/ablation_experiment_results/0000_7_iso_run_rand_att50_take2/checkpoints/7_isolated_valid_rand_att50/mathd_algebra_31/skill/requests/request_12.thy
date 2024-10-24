lemma nested_sqrt_convergence:
  fixes x :: real and u :: "nat \<Rightarrow> real"
  assumes "\<forall> n. u (n + 1) = sqrt (x + u n)"
  shows "filterlim u at_top (nhds L) \<Longrightarrow> L = sqrt (x + L)"