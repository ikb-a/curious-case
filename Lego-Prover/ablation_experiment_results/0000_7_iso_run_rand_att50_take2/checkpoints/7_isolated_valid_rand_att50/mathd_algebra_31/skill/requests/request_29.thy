lemma convergence_nested_radicals:
  fixes u :: "nat \<Rightarrow> real"
  assumes "u (n + 1) = sqrt (x + u n)"
  shows "filterlim u at_top (nhds 9)"