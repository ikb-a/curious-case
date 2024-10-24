lemma mod_n_cases:
  fixes a :: int and n :: nat
  assumes "n > 0"
  shows "\<exists>r. a mod n = r \<and> r < n"
proof -
  obtain r where "a mod n = r" using mod_less by blast
  moreover have "r < n" using assms by (metis Euclidean_Division.pos_mod_bound calculation int_ops(1) of_nat_less_iff)
  ultimately show ?thesis by auto
qed