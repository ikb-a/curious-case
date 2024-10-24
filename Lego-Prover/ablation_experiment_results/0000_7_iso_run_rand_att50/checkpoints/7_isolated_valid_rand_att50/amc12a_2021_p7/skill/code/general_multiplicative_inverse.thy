lemma general_multiplicative_inverse:
  fixes a :: real
  assumes "a \<noteq> 0"
  shows "a * (1 / a) = (1::real)"
  using non_zero_multiplicative_inverse[of a] assms by simp