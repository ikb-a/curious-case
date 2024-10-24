lemma mod_n_cases:
  fixes a :: int and n :: nat
  assumes "n > 0"
  shows "a mod n < n"
proof -
  have "a mod n = a - (n * (a div n))" by (auto simp: field_simps)
  then show ?thesis by (metis Euclidean_Division.pos_mod_bound assms of_nat_0_less_iff)
qed