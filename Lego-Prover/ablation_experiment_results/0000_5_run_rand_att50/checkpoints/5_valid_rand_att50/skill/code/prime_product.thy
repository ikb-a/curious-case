lemma prime_product:
  fixes a b :: nat
  assumes "a > 0" "b > 0" "prime (a * b)"
  shows "a = 1 \<or> b = 1"
proof -
  have "a * b > 1" using assms by (metis prime_gt_1_nat)
  then have "a * b = a * 1 \<or> a * b = 1 * b" using prime_def by (metis assms(3) comm_monoid_mult_class.mult_1 dvd_triv_right mult.comm_neutral prime_nat_iff)
  {
    assume "a > 1"
    then have "b = 1" using prime_def assms by (metis less_not_refl2 prime_product)
  }
  then show "a = 1 \<or> b = 1" using prime_def assms by fastforce
qed