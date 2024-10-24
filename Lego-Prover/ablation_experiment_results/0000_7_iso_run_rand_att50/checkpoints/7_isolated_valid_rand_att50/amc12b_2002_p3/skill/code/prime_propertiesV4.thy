lemma prime_properties:
  fixes p :: nat
  assumes "prime p"
  shows "p > 1"
proof -
  have "p = 1 + (p - 1)" by (metis Suc_diff_1 assms not_prime_0 plus_1_eq_Suc zero_less_iff_neq_zero)
  hence "p > 1" using assms prime_def by (metis prime_gt_1_nat)
  thus ?thesis by simp
qed