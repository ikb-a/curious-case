lemma sum_of_squares_non_negative_general_v3:
  fixes xs :: "real list"
  assumes "xs \<noteq> []"
  shows "(\<Sum>x\<in>set xs. x^2) >= 0"
proof -
  have "x^2 >= 0" for x :: real by simp
  thus ?thesis using assms by (simp add: sum_nonneg)
qed