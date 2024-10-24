lemma nested_sqrt_convergence:
  fixes x :: real
  assumes "x >= 0"
  shows "filterlim (\<lambda>n. sqrt (x + (if n = 0 then 0 else sqrt (x + ...)))) at_top (nhds (sqrt (x + sqrt (x + ...))))"