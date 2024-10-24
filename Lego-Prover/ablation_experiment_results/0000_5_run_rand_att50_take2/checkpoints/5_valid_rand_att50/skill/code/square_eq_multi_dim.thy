lemma square_eq_multi_dim:
  fixes a b :: "real set"
  assumes "\<forall>x \<in> a. \<forall>y \<in> b. x = y"
  shows "\<forall>x \<in> a. x^2 = (\<lambda>y. y^2) (x)"
  using assms by auto