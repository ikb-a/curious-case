lemma floor_inequality:
  fixes r :: real and n :: int
  assumes "n = floor r"
  shows "n <= r \<and> r < n + 1"
proof -
  have "n \<le> r" using assms
    by auto
  have "r < n + 1" using assms
    by auto
  thus ?thesis by (metis \<open>real_of_int n \<le> r\<close>)
qed