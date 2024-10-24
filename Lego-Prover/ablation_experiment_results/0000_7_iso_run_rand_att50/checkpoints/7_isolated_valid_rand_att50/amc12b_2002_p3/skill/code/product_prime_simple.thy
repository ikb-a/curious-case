lemma product_prime_simple:
  fixes p a b :: nat
  assumes "a > 0" "b > 0" "a * b = p" "prime p"
  shows "a = 1 \<or> b = 1"
proof -
  have "p = a * b" using assms(3) by simp
  then have "1 < a * b" using assms(1) assms(2) by (metis assms(3) assms(4) prime_nat_iff)
  moreover have "p > 1" using assms(4) by (metis prime_gt_1_nat)
  ultimately have "a = 1 \<or> b = 1" using prime_def by (metis assms(3) assms(4) prime_product)
  thus ?thesis by auto
qed