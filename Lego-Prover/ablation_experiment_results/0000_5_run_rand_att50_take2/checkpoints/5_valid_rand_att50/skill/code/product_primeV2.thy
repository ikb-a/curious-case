lemma product_prime:
  fixes a b p :: nat
  assumes "a * b = p" and "prime p"
  shows "a = 1 \<or> b = 1"
proof -
  have "p > 1" using assms(2) by (metis prime_gt_1_nat)
  {
    assume "a > 1"
    then have "a * b > 1 * 1" using assms(1) by (metis \<open>p > 1\<close> nat_mult_eq_1_iff)
    then have "b = 1" using assms(2) by (metis \<open>1 < a\<close> assms(1) dual_order.irrefl prime_product)
  }
  moreover {
    assume "b > 1"
    then have "a * b > 1 * 1" using assms(1) by (metis \<open>p > 1\<close> nat_mult_eq_1_iff)
    then have "a = 1" using assms(2) by (metis \<open>1 < b\<close> assms(1) dual_order.irrefl prime_product)
  }
  ultimately show "a = 1 \<or> b = 1" by (metis Primes.prime_nat_def assms(1) assms(2) prime_product)
qed