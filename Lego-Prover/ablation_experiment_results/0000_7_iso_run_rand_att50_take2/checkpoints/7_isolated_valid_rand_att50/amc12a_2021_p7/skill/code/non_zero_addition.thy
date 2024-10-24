lemma non_zero_addition:
  fixes a b :: real
  assumes "a \<noteq> 0"
  shows "a + (-a) = 0"
  by (simp add: assms)