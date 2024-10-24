lemma product_equals_prime:
  fixes a b :: nat
  assumes "a * b = p" and "prime p"
  shows "a = 1 \<or> b = 1"
proof -
  have "a * b > 1" using assms(2) by (metis assms(1) prime_gt_1_nat)
  have "a > 1 \<and> b > 1 \<longrightarrow> a * b > 1" 
    using assms(1) by (metis \<open>1 < a * b\<close>)
  hence "\<not> (a > 1 \<and> b > 1)" using `a * b > 1` 
    by (metis Primes.prime_nat_def assms(1) assms(2) less_not_refl less_numeral_extra(4) prime_product)
  thus "a = 1 \<or> b = 1"
  proof (cases "a > 1")
    case True
    then have "b = 1" using assms(2) by (smt (verit) assms(1) less_numeral_extra(4) prime_product)
    then show ?thesis by auto
  next
    case False
    then have "a = 1" using assms(1) by (metis assms(2) mult.comm_neutral mult.commute mult_delta_right prime_gt_1_nat prime_product)
    then show ?thesis by auto
  qed
qed