lemma limit_nested_sqrt:
  fixes x :: real
  assumes "filterlim u at_top (nhds L)"
  shows "L = sqrt (x + L)"