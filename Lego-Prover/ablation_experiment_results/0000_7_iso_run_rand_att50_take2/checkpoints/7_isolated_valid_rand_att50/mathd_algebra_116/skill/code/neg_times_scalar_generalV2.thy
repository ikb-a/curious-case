lemma neg_times_scalar_general:
  fixes x :: real and a :: real
  assumes "a \<noteq> 0"
  shows "-a * x = - (a * x)"
  by auto