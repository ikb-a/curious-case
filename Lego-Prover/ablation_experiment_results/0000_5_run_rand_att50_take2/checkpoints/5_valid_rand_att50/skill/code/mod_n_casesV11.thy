lemma mod_n_cases:
  fixes a n :: int
  assumes "n > 0"
  shows "\<exists>r. r < n \<and> (a mod n = r)"
proof -
  obtain r where "r = a mod n" by auto
  then have "0 \<le> r" using assms by auto
  moreover have "r < n" using assms by (metis Euclidean_Division.pos_mod_bound \<open>r = a mod n\<close>)
  ultimately show ?thesis by auto
qed