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
    moreover have "p div a < p"
      using `a * b > 1` assms(1) by (metis \<open>1 < a\<close> assms(2) div_less_dividend not_prime_0 zero_less_iff_neq_zero)
    ultimately have "b < p" by auto
    then have "b = 1" 
      using assms(2) prime_def by (metis assms(1) dvd_triv_right gcd_nat.order_iff_strict gcd_nat.trans prime_nat_not_dvd)
  }
  {
    assume "b > 1"
    then have "a = p div b"
      using assms(1) by auto
    moreover have "p div b < p"
      using `a * b > 1` assms(1) by (metis Primes.prime_nat_def \<open>1 < b\<close> assms(2) calculation div_le_dividend dual_order.strict_iff_order gr_zeroI less_not_refl mult_1 mult_eq_self_implies_10 not_prime_0 prime_product)
    ultimately have "a < p" by auto
    then have "a = 1" 
      using assms(2) prime_def by (metis \<open>1 < b\<close> assms(1) less_irrefl_nat mult.commute mult_delta_right prime_product)
  }
  thus "a = 1 \<and> b = p \<or> a = p \<and> b = 1" 
    by (metis assms(1) assms(2) comm_monoid_mult_class.mult_1 mult_cancel_right nat.distinct(1) nat_mult_1_right prime_product)
qed