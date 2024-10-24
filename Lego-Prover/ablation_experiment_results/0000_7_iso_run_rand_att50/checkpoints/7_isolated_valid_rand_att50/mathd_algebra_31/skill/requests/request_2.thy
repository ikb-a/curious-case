lemma recursive_limit:
  fixes x :: real
  assumes "filterlim (\<lambda>n. sqrt (x + u n)) at_top (nhds 9)"
  shows "x = 72"