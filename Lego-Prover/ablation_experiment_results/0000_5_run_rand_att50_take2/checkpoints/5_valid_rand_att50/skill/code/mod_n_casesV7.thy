lemma mod_n_cases:
  fixes a n :: int
  assumes "n > 0"
  shows "\<exists>r. a mod n = r \<and> (0 \<le> r \<and> r < n)"
proof -
  obtain r where "0 \<le> r \<and> r < n" and "a mod n = r"
    using assms by fastforce
  thus ?thesis by auto
qed