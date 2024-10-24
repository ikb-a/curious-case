lemma a_times_vera_generalized:
  fixes a :: real and b :: real
  assumes "a \<noteq> 0"
  shows "a * (b / a) = b"
  by (simp add: assms)