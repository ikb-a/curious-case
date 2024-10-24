lemma sqrt_limit:
  fixes x :: real
  assumes "u = sqrt (x + u)"
  shows "u = sqrt (x + u) \<Longrightarrow> u^2 = x + u"