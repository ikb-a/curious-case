lemma nonnegative_sum_of_squares_2:
  fixes a b c :: real
  assumes "a^2 + b^2 + c^2 = 0"
  shows "a = 0 \<and> b = 0 \<and> c = 0"
proof -
  have "a^2 = 0" using assms by sos
  then have "a = 0" by (metis power_eq_0_iff)
  have "b^2 = 0" using assms by sos
  then have "b = 0" by (metis power_eq_0_iff)
  have "c^2 = 0" using assms by sos
  then have "c = 0" by (metis power_eq_0_iff)
  show ?thesis by (metis \<open>a = 0\<close> \<open>b = 0\<close> \<open>c = 0\<close>)
qed