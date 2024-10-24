lemma product_prime:
  fixes a b :: nat
  assumes "prime (a * b)"
  shows "a = 1 \<or> b = 1"
proof -
  have "a * b > 1" using assms by (metis prime_def)
  {
    assume "a > 1"
    then have "\<not> prime (a * b) \<longrightarrow> b = 1" 
      using assms prime_def by (metis dvd_triv_left mult.right_neutral nat_neq_iff prime_nat_iff)
    hence "b = 1" using assms prime_def by (metis \<open>1 < a * b\<close> \<open>1 < a\<close> comm_monoid_mult_class.mult_1 dual_order.strict_trans dvd_triv_right le_eq_less_or_eq less_one linordered_nonzero_semiring_class.zero_le_one mult.commute mult_le_less_imp_less nless_le)
  }
  {
    assume "b > 1"
    then have "\<not> prime (a * b) \<longrightarrow> a = 1" 
      using assms prime_def by (metis dvd_triv_right nat_mult_1 nat_neq_iff prime_nat_iff)
    hence "a = 1" using assms prime_def by (metis \<open>1 < a * b\<close> \<open>1 < a \<Longrightarrow> b = 1\<close> \<open>1 < b\<close> dvdI nless_le)
  }
  thus "a = 1 \<or> b = 1" by (metis \<open>1 < a * b\<close> less_one mult_is_0 nat_neq_iff not_one_less_zero)
qed