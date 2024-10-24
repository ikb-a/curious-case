lemma nested_sqrt_convergence:
  fixes x :: real
  assumes "x = 72"
  shows "filterlim (\<lambda>n. sqrt (x + sqrt (x + ...))) at_top (nhds 9)"
  using assms by (simp add: filterlim_def)