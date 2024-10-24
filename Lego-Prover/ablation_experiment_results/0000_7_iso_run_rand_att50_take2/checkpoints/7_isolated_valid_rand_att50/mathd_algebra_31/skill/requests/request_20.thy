lemma filterlim_sqrt:
  fixes x :: real
  assumes "x >= 0"
  shows "filterlim (\<lambda>n. sqrt (x + n)) at_top (nhds (sqrt x))"