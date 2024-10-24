lemma product_equals_prime:
  fixes p :: nat
  assumes "prime p"
  shows "\<exists>a b. a * b = p \<and> (a = 1 \<or> b = 1)"
proof -
  have "p > 1" using assms by (metis prime_gt_1_nat)
  have "p = p * 1" by (metis mult.right_neutral)
  moreover have "1 = 1" by simp
  ultimately show "\<exists>a b. a * b = p \<and> (a = 1 \<or> b = 1)" 
    using `p = p * 1` `1 = 1` by (metis)
qed