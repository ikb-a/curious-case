lemma nested_radical_limit:
  fixes x :: real
  assumes "u (n + 1) = sqrt (x + u n)" 
    and "filterlim u at_top (nhds L)"
  shows "L = sqrt (x + L)"