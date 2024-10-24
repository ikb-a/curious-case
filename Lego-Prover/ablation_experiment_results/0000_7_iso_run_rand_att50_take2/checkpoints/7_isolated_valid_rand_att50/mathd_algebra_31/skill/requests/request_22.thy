lemma limit_of_recursive_sequence:
  fixes x :: real
  assumes "\<forall> n. u (n + 1) = sqrt (x + u n)"
  shows "filterlim u at_top (nhds (sqrt (x + sqrt (x + ...))))"