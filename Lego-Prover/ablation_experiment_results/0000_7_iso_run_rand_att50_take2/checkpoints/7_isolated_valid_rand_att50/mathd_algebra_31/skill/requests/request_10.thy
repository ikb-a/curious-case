lemma fixed_point:
  fixes x :: real
  assumes "u = sqrt (x + u)"
  shows "u^2 = x + u"