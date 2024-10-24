lemma nested_sqrt_limit:
  fixes x :: real
  assumes "filterlim (\<lambda>n. sqrt (x + u n)) at_top (nhds L)"
  shows "L = sqrt (x + L)"