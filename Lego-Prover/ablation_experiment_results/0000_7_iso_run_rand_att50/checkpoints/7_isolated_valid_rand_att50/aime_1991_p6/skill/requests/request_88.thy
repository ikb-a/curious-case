lemma average_sum:
  fixes s :: real
  assumes "n > 0"
  shows "s / n = avg \<Longrightarrow> s = n * avg"