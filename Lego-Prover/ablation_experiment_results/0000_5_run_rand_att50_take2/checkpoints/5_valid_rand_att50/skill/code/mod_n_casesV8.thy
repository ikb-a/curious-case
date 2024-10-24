lemma mod_n_cases:
  fixes a n :: int
  assumes "n > 0"
  shows "\<exists>r. a mod n = r \<and> (0 \<le> r \<and> r < n)"
proof -
  obtain r where "r = a mod n" 
    using assms by auto
  then show "\<exists>r. a mod n = r \<and> (0 \<le> r \<and> r < n)"
    by (metis Euclidean_Division.pos_mod_bound Euclidean_Division.pos_mod_sign assms)
qed