lemma non_zero_property:
  fixes a :: real
  assumes "a \<noteq> 0"
  shows "1 / a * a = 1"
  by (simp add: assms)