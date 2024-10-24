lemma non_zero_times_inverse_with_property:
  fixes a :: "real set" and P :: "real \<Rightarrow> bool"
  assumes "\<forall>x \<in> a. x \<noteq> 0" "\<forall>x \<in> a. P x"
  shows "\<forall>x \<in> a. x * (1 / x) = 1 \<and> P x"
proof -
  have "\<forall>x \<in> a. x * (1 / x) = 1" 
  proof
    fix x
    assume "x \<in> a"
    then have "x \<noteq> 0" using assms(1) by auto
    thus "x * (1 / x) = 1" by auto
  qed
  thus ?thesis using assms(2) by auto
qed