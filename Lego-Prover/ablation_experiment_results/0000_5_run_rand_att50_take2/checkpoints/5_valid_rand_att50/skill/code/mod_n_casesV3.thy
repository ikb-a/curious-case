lemma mod_n_cases:
  fixes a :: int and n :: nat
  assumes "n > 0"
  shows "\<exists>r. r < n \<and> (a mod n = r)"
proof -
  obtain r where "0 \<le> r \<and> r < n \<and> a mod n = r" 
    using assms by (metis Euclidean_Division.pos_mod_bound Euclidean_Division.pos_mod_sign bot_nat_0.extremum dual_order.refl nat_less_iff nat_zero_as_int of_nat_less_iff zero_le_imp_eq_int)
  thus ?thesis by blast
qed