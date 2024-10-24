lemma minimum_value_of_squares_generalized:
  fixes x y :: real
  assumes "a = x^2" "b = y^2" "c = (x * y)^2"
  shows "a + b + c >= 0"
proof -
  have "a >= 0" using assms by simp
  have "b >= 0" using assms by simp
  have "c >= 0" using assms by simp
  then show ?thesis using add_nonneg_nonneg[of "a + b" "c"]
  proof -
    have "a + b >= 0" by (metis \<open>0 \<le> a\<close> \<open>0 \<le> b\<close> add_nonneg_nonneg)
    then show "a + b + c >= 0" 
      using add_nonneg_nonneg[of "a + b" "c"] by (metis \<open>0 \<le> a\<close> \<open>0 \<le> b\<close> \<open>0 \<le> c\<close> add_nonneg_nonneg group_cancel.add1)
  qed
qed