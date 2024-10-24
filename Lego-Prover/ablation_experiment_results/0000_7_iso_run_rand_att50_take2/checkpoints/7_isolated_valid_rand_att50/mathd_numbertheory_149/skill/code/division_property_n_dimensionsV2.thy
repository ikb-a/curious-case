lemma division_property_n_dimensions:
  fixes a b :: "real set"
  assumes "(\<forall> x \<in> a. x \<noteq> 0) \<and> (\<forall> y \<in> b. y \<noteq> 0)"
  shows "\<forall> x \<in> a. \<forall> y \<in> b. 1 / (x * y) = (1 / x) * (1 / y)"
proof -
  have "\<forall> x \<in> a. \<forall> y \<in> b. 1 / (x * y) = 1 * (1 / (x * y))" by (simp add: divide_simps)
  moreover have "\<forall> x \<in> a. \<forall> y \<in> b. 1 / (x * y) = (1 / x) * (1 / y)"
    using assms by auto
  ultimately show ?thesis by blast
qed