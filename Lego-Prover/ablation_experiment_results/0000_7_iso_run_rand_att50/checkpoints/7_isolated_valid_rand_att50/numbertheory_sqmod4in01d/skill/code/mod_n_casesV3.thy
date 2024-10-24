lemma mod_n_cases:
  fixes a :: int
  fixes n :: nat
  assumes "n > 0"
  shows "\<exists>r. 0 \<le> r \<and> r < n \<and> (a mod n = r)"
proof -
  have "a mod n < n" using assms by (simp add: mod_less)
  then obtain r where "r = a mod n" by auto
  then show ?thesis using \<open>n > 0\<close> by (metis Euclidean_Division.pos_mod_sign \<open>a mod int n < int n\<close> int_nat_eq le0 nat_less_iff of_nat_0_less_iff)
qed