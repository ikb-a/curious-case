lemma convergence_of_nested_radicals:
  fixes x :: real
  assumes "u (n + 1) = sqrt (x + u n)"
  shows "u n converges to L \<Longrightarrow> L = sqrt (x + L)"