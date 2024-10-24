lemma scalar_multiplication_inverse_parameterized:
  fixes a b :: real
  assumes "a > 0"
  shows "a * (1 / a) = 1"
  using scalar_multiplication_inverse_general[of a] assms by simp