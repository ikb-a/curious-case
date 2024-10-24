lemma limit_of_nested_radicals:
  fixes x :: real
  assumes "filterlim u at_top (nhds L)"
  shows "L = sqrt (x + L)"