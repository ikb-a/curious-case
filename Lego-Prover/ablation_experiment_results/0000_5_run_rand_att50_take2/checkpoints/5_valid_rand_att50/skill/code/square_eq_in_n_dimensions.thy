lemma square_eq_in_n_dimensions:
  fixes a b :: "real set"
  assumes "a = b"
  shows "(\<Sum>x\<in>a. x^2) = (\<Sum>x\<in>b. x^2)"
  using assms by auto