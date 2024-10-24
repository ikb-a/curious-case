lemma mod_n_cases:
  fixes a :: int
  assumes "n > 0"
  shows "\<exists>k. a mod n = k \<and> (0 \<le> k \<and> k < n)"
proof -
  obtain k where "a mod n = k" by (metis mod_eq_0_iff_dvd)
  then have "0 \<le> k" by (metis Euclidean_Division.pos_mod_sign assms)
  then have "k < n" using assms by (metis Euclidean_Division.pos_mod_bound \<open>a mod n = k\<close>)
  then show ?thesis by (metis \<open>0 \<le> k\<close> \<open>a mod n = k\<close>)
qed