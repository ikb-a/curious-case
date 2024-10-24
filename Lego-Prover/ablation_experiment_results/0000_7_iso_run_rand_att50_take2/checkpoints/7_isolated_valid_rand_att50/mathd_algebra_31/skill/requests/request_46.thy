lemma sqrt_limit:
  fixes x :: real
  assumes "x > 0"
  shows "filterlim (\<lambda>n. sqrt (x + u n)) at_top (nhds (sqrt (x + sqrt (x + sqrt (x + ...))))"