lemma neg_multiple_times:
  fixes x :: real
  fixes k :: real
  assumes "k \<noteq> 0"
  shows "-k * x = -k * x"
  by simp