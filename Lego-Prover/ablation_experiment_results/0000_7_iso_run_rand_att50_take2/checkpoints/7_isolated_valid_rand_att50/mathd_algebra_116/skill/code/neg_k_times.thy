lemma neg_k_times:
  fixes x :: real
  assumes "k \<noteq> 0"
  shows "-k * x = -k * x"
  by (metis assms)