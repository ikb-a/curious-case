lemma mod_n_cases:
  fixes a :: int
  fixes n :: nat
  assumes "n > 0"
  shows "\<exists>r. r < n \<and> (a mod n = r)"
proof -
  have "a mod n < n" using assms by (simp add: mod_less)
  then show ?thesis by (metis Euclidean_Division.pos_mod_sign assms of_nat_0_less_iff of_nat_less_iff zero_le_imp_eq_int)
qed