lemma neg_times_scalar:
  fixes x :: real
  assumes "a \<in> {0..n}" "n > 0"
  shows "(-a) * x = - (a * x)"
  by (simp add: algebra_simps)