lemma product_prime:
  fixes a b :: nat
  assumes "prime (a * b)"
  shows "a = 1 \<or> b = 1"
proof -
  have "a * b > 1" using assms by (metis prime_def)
  {
    assume "a > 1"
    then have "a * b = a * 1" 
      using assms prime_def by (metis dvd_triv_left mult.right_neutral nat_neq_iff)
    hence "b = 1" by (metis \<open>1 < a\<close> less_zeroE mult.comm_neutral mult_delta_right mult_eq_self_implies_10)
  }
  {
    assume "b > 1"
    then have "a * b = 1 * b" 
      using assms prime_def by (metis dvd_triv_right mult_1 nat_neq_iff)
    hence "a = 1" by (metis \<open>1 < b\<close> gr_implies_not0 mult_right_cancel)
  }
  then show "a = 1 \<or> b = 1" 
    using `a * b > 1` by (metis less_one mult_is_0 not_less_iff_gr_or_eq not_one_less_zero)
qed