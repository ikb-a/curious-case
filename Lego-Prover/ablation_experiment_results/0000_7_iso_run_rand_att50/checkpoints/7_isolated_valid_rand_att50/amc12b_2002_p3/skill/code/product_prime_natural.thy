lemma product_prime_natural:
  fixes a b p :: nat
  assumes "a > 0" and "b > 0" and "a * b = p" and "prime p"
  shows "a = 1 \<or> b = 1"
proof -
  obtain k where "p = 1 + k" using assms(4) by (metis not0_implies_Suc not_prime_0 plus_1_eq_Suc)
  have "1 < a * b" using assms(1) assms(2) by (metis assms(3) assms(4) prime_gt_1_nat)
  thus "a = 1 \<or> b = 1" using prime_def by (metis assms(1) assms(2) assms(3) assms(4) product_prime_extended)
qed