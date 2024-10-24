lemma nonzero_multiplicative_inverse:
  fixes a :: real
  assumes "a \<noteq> 0"
  shows "a * (1 / a) = 1"
  by (simp add: assms)