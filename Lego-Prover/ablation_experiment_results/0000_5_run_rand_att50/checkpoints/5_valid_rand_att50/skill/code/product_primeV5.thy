lemma product_prime:
  fixes a b :: nat
  assumes "prime (a * b)"
  shows "a = 1 \<or> b = 1"
proof -
  have "a * b > 1" using assms by (metis prime_gt_1_nat)
  {
    assume "a > 1"
    then have "b = 1" 
      using assms prime_def by (metis nat_neq_iff prime_product)
  }
  {
    assume "b > 1"
    then have "a = 1" 
      using assms prime_def by (metis nat_neq_iff prime_product)
  }
  thus "a = 1 \<or> b = 1" using `a * b > 1` by (metis less_one mult_is_0 not_less_iff_gr_or_eq not_one_less_zero)
qed