lemma a_times_vera_extended:
  fixes a :: real and b :: real
  assumes "a \<noteq> 0" and "b \<noteq> 0"
  shows "a * (1 / a) = 1 \<and> b * (1 / b) = 1"
  by (simp add: assms)