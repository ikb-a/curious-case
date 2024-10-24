lemma prime_properties:
  fixes p :: nat
  assumes "prime p"
  shows "p > 1"
proof -
  have "p > 1" using assms by (metis prime_gt_1_nat)
  thus ?thesis by auto
qed