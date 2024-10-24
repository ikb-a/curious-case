lemma product_prime_condition:
  fixes a b :: nat
  assumes "a > 0" "b > 0" "prime (a * b)"
  shows "a = 1 \<or> b = 1"
proof -
  have "a * b > 1" using assms(1) assms(2) by (metis assms(3) prime_gt_1_nat)
  then have "a * b = 1 * (a * b)" by simp
  {
    assume "a > 1"
    then have "a * b > 1 * 1" using assms(2) by (metis \<open>1 < a * b\<close> nat_mult_eq_1_iff)
    then have "b = 1" using assms(2) by (metis \<open>1 < a\<close> assms(3) less_not_refl2 prime_product)
  }
  moreover {
    assume "b > 1"
    then have "a * b > 1 * 1" using assms(2) by (metis \<open>1 < a * b\<close> nat_mult_eq_1_iff)
    then have "a = 1" using assms(2) by (metis \<open>1 < b\<close> assms(3) less_not_refl2 prime_product)
  }
  ultimately show "a = 1 \<or> b = 1" by (metis \<open>1 < a * b\<close> less_one mult_eq_0_iff nat_neq_iff not_one_less_zero)
qed