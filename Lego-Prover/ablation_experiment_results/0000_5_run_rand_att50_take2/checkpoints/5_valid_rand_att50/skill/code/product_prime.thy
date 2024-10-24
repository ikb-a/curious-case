lemma product_prime:
  fixes a b :: nat
  assumes "a * b = p" and "prime p"
  shows "a = 1 \<or> b = 1"
proof -
  have "p > 1" using assms(2) by (metis prime_gt_1_nat)
  {
    assume "a > 1"
    then have "a * b > 1 * b" using assms(1) by (metis Primes.prime_nat_def assms(2) comm_monoid_mult_class.mult_1 less_numeral_extra(4) mult.right_neutral prime_product)
    then have "p > b" using assms(1) by simp
    then have "b = 1" using assms(2) by (smt (verit) \<open>1 < a\<close> assms(1) less_numeral_extra(4) prime_product)
  }
  moreover {
    assume "b > 1"
    then have "a * b > a * 1" using assms(1) by (metis \<open>1 < p\<close> calculation comm_monoid_mult_class.mult_1 less_numeral_extra(4) mult.comm_neutral not_less_iff_gr_or_eq order.strict_trans)
    then have "p > a" using assms(1) by simp
    then have "a = 1" using assms(2) by (smt (verit) \<open>1 < b\<close> assms(1) less_numeral_extra(4) prime_product)
  }
  ultimately show "a = 1 \<or> b = 1" by (metis Primes.prime_nat_def assms(1) assms(2) prime_product)
qed