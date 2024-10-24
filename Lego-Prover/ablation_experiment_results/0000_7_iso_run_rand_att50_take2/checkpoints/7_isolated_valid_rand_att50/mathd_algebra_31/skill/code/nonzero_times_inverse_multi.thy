lemma nonzero_times_inverse_multi:
  fixes a :: real
  assumes "a \<noteq> 0" and "b \<noteq> 0"
  shows "(a * (1 / a)) * (b * (1 / b)) = 1"
  by (simp add: assms)