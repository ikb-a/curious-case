lemma non_zero_times_inverse_extended:
  fixes a :: "real set"
  assumes "\<forall>x \<in> a. x \<noteq> 0"
  shows "\<forall>x \<in> a. x * (1 / x) = 1"
proof -
  have "\<forall>x \<in> a. x * (1 / x) = 1" 
  proof
    fix x
    assume "x \<in> a"
    then have "x \<noteq> 0" using assms by auto
    thus "x * (1 / x) = 1" by (simp add: non_zero_times_inverse)
  qed
  thus ?thesis by auto
qed