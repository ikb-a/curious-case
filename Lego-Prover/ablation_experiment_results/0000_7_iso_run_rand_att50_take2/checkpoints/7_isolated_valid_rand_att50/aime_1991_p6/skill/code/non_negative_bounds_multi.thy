lemma non_negative_bounds_multi:
  fixes xs :: "nat list"
  assumes "sum_list xs = n" and "0 \<le> n"
  shows "\<forall>x \<in> set xs. x \<ge> 0"
proof -
  have "\<forall>x \<in> set xs. x \<ge> 0" 
    by (induction xs) (auto simp: assms(2) sum_list_nonneg)
  then show ?thesis by simp
qed