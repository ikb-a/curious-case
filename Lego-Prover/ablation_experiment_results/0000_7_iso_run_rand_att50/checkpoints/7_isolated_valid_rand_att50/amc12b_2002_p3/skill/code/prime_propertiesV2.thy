lemma prime_properties:
  fixes p :: nat
  assumes "prime p"
  shows "p > 1"
proof -
  obtain k where "p = 1 + k" using assms by (metis not0_implies_Suc not_prime_0 plus_1_eq_Suc)
  have "k > 0" using assms by (metis \<open>p = 1 + k\<close> add_cancel_right_right not_prime_1 zero_less_iff_neq_zero)
  thus "p > 1" by (metis assms prime_gt_1_nat)
qed