lemma neg_times_scalar_general:
  fixes a :: real
  fixes x :: "real set"
  shows "\<forall>y \<in> x. -a * y = -a * y"
  by auto