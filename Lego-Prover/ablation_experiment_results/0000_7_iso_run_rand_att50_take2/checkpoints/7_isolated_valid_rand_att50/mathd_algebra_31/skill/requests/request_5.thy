lemma sqrt_limit:
  fixes x :: real
  assumes "x >= 0"
  shows "sqrt (x + sqrt (x + sqrt (x + ...)) = sqrt (x + y) \<Longrightarrow> y = sqrt (x + y)"