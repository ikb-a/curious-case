lemma square_eq_multi:
  fixes xs :: "real list"
  assumes "\<forall>x \<in> set xs. x = 0"
  shows "\<forall>x \<in> set xs. x^2 = 0"
proof -
  have "\<forall>x \<in> set xs. x^2 = 0" 
    using assms by auto
  thus ?thesis by simp
qed