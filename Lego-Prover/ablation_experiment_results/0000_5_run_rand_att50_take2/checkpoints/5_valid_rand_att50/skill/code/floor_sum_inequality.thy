lemma floor_sum_inequality:
  fixes r :: real and k :: int
  assumes "a < r \<and> r < b"
  shows "floor (r + real_of_int k) = floor r + k"
proof -
  have "floor (r + real_of_int k) = floor r + floor (real_of_int k)"
  proof -
    have "floor (real_of_int k) = k" 
      by auto
    then show ?thesis by auto
  qed
  moreover have "floor r \<le> r" 
    using assms by auto
  hence "floor r + k \<le> r + real_of_int k" 
    using assms by auto
  moreover have "r + real_of_int k < floor r + k + 1"
  proof -
    have "r < floor r + 1" 
      using assms by auto
    thus "r + real_of_int k < floor r + k + 1" 
      by auto
  qed
  ultimately show "floor (r + real_of_int k) = floor r + k" 
    by auto
qed