lemma non_zero_times_inverse_for_set:
  fixes A :: "'a::field set"
  assumes "\<forall>x \<in> A. x \<noteq> 0"
  shows "\<forall>x \<in> A. x * (1 / x) = 1"
proof -
  have "\<forall>x \<in> A. x * (1 / x) = 1" 
  proof
    fix x
    assume "x \<in> A"
    then have "x \<noteq> 0" using assms by auto
    thus "x * (1 / x) = 1" by (simp add: non_zero_times_inverse_generalized)
  qed
  thus ?thesis by auto
qed