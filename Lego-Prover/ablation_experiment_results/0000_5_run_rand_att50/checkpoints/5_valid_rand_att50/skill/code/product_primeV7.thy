lemma product_prime:
  fixes a b :: nat
  assumes "prime (a * b)"
  shows "a = 1 \<or> b = 1"
proof -
  have "a * b > 1" using assms by (metis prime_def)
  {
    assume "a > 1"
    then have "b = 1" 
      using assms prime_def by (metis \<open>1 < a * b\<close> dvd_triv_right le_eq_less_or_eq less_one mult.commute mult_le_less_imp_less nat_mult_1 nless_le order_less_trans zero_less_one_class.zero_le_one)
  }
  {
    assume "b > 1"
    then have "a = 1" 
      using assms prime_def by (metis \<open>1 < a * b\<close> \<open>1 < a \<Longrightarrow> b = 1\<close> dvdI nless_le)
  }
  thus "a = 1 \<or> b = 1" 
    using `a * b > 1` by (metis less_one mult_is_0 not_less_iff_gr_or_eq)
qed