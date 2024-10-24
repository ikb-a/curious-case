lemma mod_n_cases:
  fixes a :: int
  assumes "n > 0"
  shows "a mod n \<in> {0..(n-1)}"
proof -
  have "a mod n = (if a mod n < 0 then a mod n + n else a mod n)"
    by (metis Euclidean_Division.pos_mod_sign assms order.strict_iff_not)
  then show ?thesis by (metis Euclidean_Division.pos_mod_bound Euclidean_Division.pos_mod_sign assms atLeastAtMost_iff zle_diff1_eq)
qed