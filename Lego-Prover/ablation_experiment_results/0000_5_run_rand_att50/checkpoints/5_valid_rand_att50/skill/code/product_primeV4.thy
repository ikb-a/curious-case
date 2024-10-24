lemma product_prime:
  fixes a b :: nat
  assumes "prime (a * b)"
  shows "a = 1 \<or> b = 1"
proof -
  have "a * b > 1" using assms by (metis prime_gt_1_nat)
  {
    assume "a > 1"
    then have "prime (a * b) \<Longrightarrow> b = 1"
    proof -
      have "a * b = a * 1" using assms by (metis \<open>1 < a\<close> dvd_triv_left nat_mult_1_right nat_neq_iff prime_nat_iff)
      thus "b = 1" by (metis assms mult_delta_left mult_left_cancel prime_prime_factor prime_product)
    qed
  }
  {
    assume "b > 1"
    then have "prime (a * b) \<Longrightarrow> a = 1"
    proof -
      have "a * b = 1 * b" using assms by (metis \<open>1 < b\<close> dvd_triv_right nat_mult_1 nat_neq_iff prime_nat_iff)
      thus "a = 1" by (metis assms mult_delta_right mult_right_cancel prime_prime_factor prime_product)
    qed
  }
  then show "a = 1 \<or> b = 1" by (metis \<open>1 < a * b\<close> assms less_one mult_is_0 not_less_iff_gr_or_eq not_one_less_zero)
qed