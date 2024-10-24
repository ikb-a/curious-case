lemma nested_radical_equality:
  fixes x :: real
  assumes "u = sqrt (x + u)"
  shows "u = sqrt (x + u) \<longleftrightarrow> u^2 = x + u"