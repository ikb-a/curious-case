lemma non_zero_times_inverse_for_list:
  fixes xs :: "real list"
  assumes "\<forall>x \<in> set xs. x \<noteq> 0"
  shows "\<forall>x \<in> set xs. x * (1 / x) = 1"
proof -
  have "\<forall>x \<in> set xs. x * (1 / x) = 1"
  proof
    fix x
    assume "x \<in> set xs"
    then have "x \<noteq> 0" using assms by auto
    thus "x * (1 / x) = 1" by (simp add: non_zero_times_inverse_generalized)
  qed
  thus ?thesis by auto
qed