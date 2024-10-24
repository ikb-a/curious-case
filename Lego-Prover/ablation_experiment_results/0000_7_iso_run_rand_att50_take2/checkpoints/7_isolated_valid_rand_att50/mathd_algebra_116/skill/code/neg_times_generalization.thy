lemma neg_times_generalization:
  fixes a x :: real
  assumes "a \<noteq> 0"
  shows "-a * x = -a * x"
  by simp