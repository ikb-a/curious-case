lemma prime_product:
  fixes a b p :: nat
  assumes "prime p" and "p = a * b"
  shows "a = 1 \<or> b = 1"
proof -
  have "p > 1" using assms(1) by (metis prime_gt_1_nat)
  {
    assume "a > 1"
    then have "a * b > 1 * 1" using assms(2) by (metis \<open>1 < p\<close> mult.comm_neutral)
    then have "b < p" using assms(2) by (metis Primes.prime_nat_def \<open>1 < a\<close> assms(1) less_numeral_extra(4) mult.right_neutral prime_product)
    then have "b = 1" using assms(1) by (smt (verit) \<open>1 < a\<close> assms(2) less_numeral_extra(4) prime_product)
  }
  moreover {
    assume "b > 1"
    then have "a * b > 1 * 1" using assms(2) by (metis \<open>1 < p\<close> mult.comm_neutral)
    then have "a < p" using assms(2) by (metis \<open>1 < b\<close> \<open>1 < p\<close> calculation less_numeral_extra(4) not_less_iff_gr_or_eq order.strict_trans)
    then have "a = 1" using assms(1) by (smt (verit) \<open>1 < b\<close> assms(2) less_numeral_extra(4) prime_product)
  }
  ultimately show "a = 1 \<or> b = 1" by (metis Primes.prime_nat_def assms(1) assms(2) prime_product)
qed