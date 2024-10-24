lemma mod_m_cases:
  fixes a :: int
  fixes m :: nat
  assumes "m > 0"
  shows "\<exists>r. r < m \<and> (a mod m = r)"
proof -
  let ?r = "a mod m"
  have "0 \<le> ?r" by (metis Euclidean_Division.pos_mod_sign assms less_eq_int_code(1) nat_less_iff nat_zero_as_int)
  moreover have "?r < m" using assms by auto
  ultimately show ?thesis by presburger
qed