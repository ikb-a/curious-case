lemma product_of_integers:
  fixes a b :: nat
  assumes "a * b = p" and "prime p"
  shows "a = 1 \<and> b = p \<or> a = p \<and> b = 1"
proof -
  have "a * b > 1" using assms(2) by (metis assms(1) prime_gt_1_nat)
  {
    assume "a > 1"
    then have "b = p div a"
      using assms(1) by auto
    moreover have "b < p"
      using `a * b > 1` assms(1) assms(2) by (metis Primes.prime_nat_def \<open>1 < a\<close> less_numeral_extra(4) nat_mult_1_right prime_product)
    ultimately have "b = 1" 
      using assms(2) prime_def by (metis \<open>1 < a\<close> assms(1) less_irrefl_nat mult.commute mult_delta_right prime_product)
  }
  {
    assume "b > 1"
    then have "a = p div b"
      using assms(1) by auto
    moreover have "a < p"
      using `a * b > 1` assms(1) assms(2) by (metis Primes.prime_nat_def \<open>1 < b\<close> less_not_refl mult_1 prime_product)
    ultimately have "a = 1" 
      using assms(2) prime_def by (metis \<open>1 < b\<close> assms(1) dual_order.irrefl mult.commute mult_delta_right prime_product)
  }
  thus "a = 1 \<and> b = p \<or> a = p \<and> b = 1" 
    by (metis assms(1) assms(2) comm_monoid_mult_class.mult_1 mult_cancel_right nat.distinct(1) nat_mult_1_right prime_product)
qed