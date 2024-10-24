lemma mod_n_cases:
  fixes a :: int
  assumes "n > 0"
  shows "0 \<le> a mod n \<and> a mod n < n"
  by (metis Euclidean_Division.pos_mod_bound Euclidean_Division.pos_mod_sign assms)