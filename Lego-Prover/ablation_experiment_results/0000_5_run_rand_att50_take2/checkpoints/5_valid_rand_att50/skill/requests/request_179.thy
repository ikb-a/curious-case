lemma convergence_of_sqrt_sequence:
  fixes x :: real
  assumes "u 0 = 0" and "u (n + 1) = sqrt (x + u n)"
  shows "filterlim u at_top (nhds L) \<Longrightarrow> L = sqrt (x + L)"