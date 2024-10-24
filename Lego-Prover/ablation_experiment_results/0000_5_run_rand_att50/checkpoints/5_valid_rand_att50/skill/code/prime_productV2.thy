lemma prime_product:
  fixes a b :: nat
  assumes "a > 0" "b > 0" "prime (a * b)"
  shows "a = 1 \<or> b = 1"
proof -
  have "a * b > 1" using assms by (metis prime_gt_1_nat)
  {
    assume "a > 1"
    then have "a * b = a * 1" 
      using prime_def by (metis assms(3) dvd_triv_left mult.right_neutral nat_neq_iff prime_nat_iff)
    hence "b = 1" by (metis assms(1) nat_mult_eq_cancel1)
  }
  {
    assume "b > 1"
    then have "a * b = 1 * b" 
      using prime_def by (metis assms(3) dvd_triv_right mult_1 nat_neq_iff prime_nat_iff)
    hence "a = 1" by (metis assms(3) dvdI mult_delta_right mult_right_cancel nat_int_comparison(1) prime_nat_iff prime_product)
  }
  then show "a = 1 \<or> b = 1" by (metis \<open>1 < a * b\<close> less_one mult_is_0 nat_neq_iff not_one_less_zero)
qed