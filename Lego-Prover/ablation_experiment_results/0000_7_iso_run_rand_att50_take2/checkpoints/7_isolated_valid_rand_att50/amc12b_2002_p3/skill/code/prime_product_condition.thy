lemma prime_product_condition:
  fixes a b :: nat
  assumes "prime (a * b)" "a > 1" "b > 1"
  shows "False"
proof -
  have "a * b > 1" using assms by (metis prime_gt_1_nat)
  have "a > 1 \<and> b > 1 \<longrightarrow> a * b > 1" by (metis \<open>1 < a * b\<close>)
  hence "\<not> (a > 1 \<and> b > 1)" using `a * b > 1` 
    by (metis Primes.prime_nat_def assms(1) div_eq_dividend_iff div_less int_ops(1) int_ops(2) less_numeral_extra(1) prime_product zero_neq_one)
  thus "False" by (metis assms(2) assms(3))
qed