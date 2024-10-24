lemma convergence_of_nested_radicals:
  fixes x :: real
  assumes "x > 0"
  shows "filterlim (\<lambda>n. sqrt (x + sqrt (x + ...))) at_top (nhds (sqrt (x + sqrt (x + ...))))"