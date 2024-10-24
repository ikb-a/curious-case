lemma nested_radical_limit:
  fixes x :: real
  assumes "u (n + 1) = sqrt (x + u n)"
  shows "filterlim u at_top (nhds (sqrt (x + sqrt (x + sqrt (x + ...))))"