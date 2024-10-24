lemma mod_n_cases:
  fixes a :: int
  fixes n :: nat
  assumes "n > 0"
  shows "a mod n < n"
proof -
  have "a mod n = a - n * (a div n)" by (auto simp: field_simps)
  also have "... < n" by (metis Euclidean_Division.pos_mod_bound assms minus_mult_div_eq_mod of_nat_0_less_iff)
  finally show ?thesis .
qed