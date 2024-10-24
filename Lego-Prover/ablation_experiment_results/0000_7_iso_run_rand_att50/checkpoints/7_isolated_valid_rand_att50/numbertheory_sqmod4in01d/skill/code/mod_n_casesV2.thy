lemma mod_n_cases:
  fixes a :: int and n :: nat
  assumes "n > 0"
  shows "0 \<le> a mod n \<and> a mod n < n"
proof -
  have "a mod n = a - n * (a div n)" by (auto simp: field_simps)
  then have "a mod n \<ge> 0" by (metis Euclidean_Division.pos_mod_sign assms of_nat_0_less_iff)
  moreover have "a mod n < n" using assms by auto
  ultimately show ?thesis by auto
qed