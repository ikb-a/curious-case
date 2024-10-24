lemma nested_sqrt_convergence:
  fixes x :: real
  assumes "x >= 0"
  shows "filterlim (\<lambda>n. sqrt (x + sqrt (x + ...))) at_top (nhds (sqrt (x + sqrt (x + ...))))"
  using assms by (simp add: filterlim_def)