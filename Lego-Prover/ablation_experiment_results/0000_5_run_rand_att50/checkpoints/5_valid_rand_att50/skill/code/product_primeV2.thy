lemma product_prime:
  fixes a b :: nat
  assumes "prime (a * b)"
  shows "a = 1 \<or> b = 1"
proof -
  have "a * b > 1" using assms by (metis prime_gt_1_nat)
  {
    assume "a > 1"
    then have "prime (a * b) \<longrightarrow> a * b = a * 1" 
      using prime_def by (metis assms dvd_triv_left mult.right_neutral nat_neq_iff prime_nat_iff)
    hence "b = 1" by (metis \<open>1 < a\<close> assms less_numeral_extra(4) prime_product)
  }
  {
    assume "b > 1"
    then have "prime (a * b) \<longrightarrow> a * b = 1 * b" 
      using prime_def by (metis assms dvd_triv_right nat_mult_1 nat_neq_iff prime_nat_iff)
    hence "a = 1" by (metis assms mult.right_neutral nat_1_eq_mult_iff prime_product)
  }
  then show "a = 1 \<or> b = 1" by (metis \<open>1 < a * b\<close> less_one mult_is_0 nat_neq_iff not_one_less_zero)
qed