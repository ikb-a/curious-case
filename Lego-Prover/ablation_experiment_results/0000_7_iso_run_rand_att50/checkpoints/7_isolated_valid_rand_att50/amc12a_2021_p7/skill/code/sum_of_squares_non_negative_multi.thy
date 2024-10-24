lemma sum_of_squares_non_negative_multi:
  fixes xs :: "real list"
  shows "(\<Sum>x\<in>set xs. x^2) >= 0"
proof -
  have "\<forall>x\<in>set xs. x^2 >= 0" 
    by auto
  then show ?thesis 
    by (simp add: sum_nonneg)
qed