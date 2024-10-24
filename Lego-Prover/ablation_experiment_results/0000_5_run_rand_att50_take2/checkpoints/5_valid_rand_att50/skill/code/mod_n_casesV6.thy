lemma mod_n_cases:
  fixes a :: int and n :: nat
  assumes "n > 0"
  shows "\<exists>r. r < n \<and> (a mod n = r)"
proof -
  obtain r where "r = a mod n" by auto
  hence "r < n" using assms by auto
  thus "\<exists>r. r < n \<and> (a mod n = r)" by (metis Euclidean_Division.pos_mod_sign \<open>r = a mod int n\<close> assms nat_eq_iff nat_less_iff of_nat_0_less_iff)
qed