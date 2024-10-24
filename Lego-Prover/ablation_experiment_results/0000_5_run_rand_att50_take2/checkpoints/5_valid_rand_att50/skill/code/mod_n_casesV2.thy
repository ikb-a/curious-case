lemma mod_n_cases:
  fixes a :: int and n :: nat
  assumes "n > 0"
  shows "a mod n \<in> {0..n-1}"
proof -
  have "a mod n < n" by (metis Euclidean_Division.pos_mod_bound assms of_nat_0_less_iff)
  moreover have "a mod n \<ge> 0" by (metis Euclidean_Division.pos_mod_sign assms of_nat_0_less_iff)
  ultimately show ?thesis by auto
qed