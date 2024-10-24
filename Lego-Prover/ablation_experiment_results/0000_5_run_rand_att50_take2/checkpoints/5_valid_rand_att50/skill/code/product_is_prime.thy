lemma product_is_prime:
  fixes n m :: nat
  assumes "n > 0" "m > 0" "prime (n * m)"
  shows "n = 1 \<or> m = 1"
proof -
  have "n * m > 1" using assms(1) assms(2) by (metis assms(3) prime_gt_1_nat)
  {
    assume "n > 1"
    then have "n * m > 1 * 1" using assms(2) by (metis \<open>n * m > 1\<close> nat_mult_eq_1_iff)
    then have "m = 1" using assms(3) by (metis \<open>1 < n\<close> less_not_refl3 prime_product)
  }
  moreover {
    assume "m > 1"
    then have "n * m > 1 * 1" using assms(1) by (metis \<open>n * m > 1\<close> nat_mult_eq_1_iff)
    then have "n = 1" using assms(3) by (metis \<open>1 < m\<close> less_not_refl2 prime_product)
  }
  ultimately show "n = 1 \<or> m = 1" by (metis \<open>1 < n * m\<close> less_one mult_is_0 nat_neq_iff not_one_less_zero)
qed