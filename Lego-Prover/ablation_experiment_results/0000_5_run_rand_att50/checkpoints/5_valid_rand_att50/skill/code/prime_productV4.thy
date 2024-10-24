lemma prime_product:
  fixes a b :: nat
  assumes "prime (a * b)"
  shows "a = 1 \<or> b = 1"
proof -
  have "a * b > 1" using assms by (simp add: prime_def)
  {
    assume "a > 1"
    then have "a * b = a * 1"
      using assms prime_def by (metis dvd_triv_left mult.right_neutral nat_neq_iff prime_nat_iff)
    hence "b = 1" by (metis assms interactive.prime_def mult_delta_left mult_left_cancel not_one_less_zero)
  }
  {
    assume "b > 1"
    then have "a * b = 1 * b"
      using assms prime_def by (metis dvd_triv_right mult_1 nat_neq_iff prime_nat_iff)
    hence "a = 1" by (metis \<open>1 < b\<close> gr_implies_not0 mult_right_cancel)
  }
  thus "a = 1 \<or> b = 1" by (metis \<open>1 < a * b\<close> less_one mult_is_0 nat_neq_iff not_one_less_zero)
qed