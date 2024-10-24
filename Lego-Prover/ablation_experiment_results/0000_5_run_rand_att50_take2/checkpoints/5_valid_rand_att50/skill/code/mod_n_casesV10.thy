lemma mod_n_cases:
  fixes a :: int and n :: nat
  assumes "n > 0"
  shows "a mod n < n"
proof -
  have "a mod n = a - n * (a div n)" by (auto simp: field_simps)
  moreover have "a - n * (a div n) < n" using assms by (metis Euclidean_Division.pos_mod_bound minus_mult_div_eq_mod of_nat_0_less_iff)
  ultimately show ?thesis by auto
qed