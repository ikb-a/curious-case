lemma limit_of_nested_sqrt:
  fixes x :: real
  assumes "x = 72"
  shows "filterlim (\<lambda>n. sqrt (x + sqrt (x + ...))) at_top (nhds 9)"