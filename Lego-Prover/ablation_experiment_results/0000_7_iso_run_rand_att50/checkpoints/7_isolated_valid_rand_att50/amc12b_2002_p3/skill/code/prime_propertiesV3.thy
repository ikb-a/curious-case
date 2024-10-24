lemma prime_properties:
  fixes p :: nat
  assumes "prime p"
  shows "p > 1"
proof -
  have "p = 1 + (p - 1)" by (metis Suc_diff_1 assms not_prime_0 plus_1_eq_Suc zero_less_iff_neq_zero)
  moreover have "p - 1 > 0" using assms prime_def by (metis add_0_iff calculation not_prime_1 zero_less_iff_neq_zero)
  ultimately show "p > 1" by (simp add: Suc_pred)
qed