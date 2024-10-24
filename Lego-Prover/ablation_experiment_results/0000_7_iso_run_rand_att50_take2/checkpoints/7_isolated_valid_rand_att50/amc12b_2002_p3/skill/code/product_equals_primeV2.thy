lemma product_equals_prime:
  fixes a b :: nat
  assumes "a * b = p" and "prime p"
  shows "a = 1 \<or> b = 1"
proof -
  have "p > 1" using assms(2) by (metis prime_gt_1_nat)
  have "a * b = p" using assms(1) by simp
  have "a > 1 \<and> b > 1 \<longrightarrow> a * b > 1"
    by (metis \<open>1 < p\<close> assms(1) less_eq_nat.simps(2) mult_pos_pos)
  hence "\<not> (a > 1 \<and> b > 1)" using `p > 1` 
    by (metis Primes.prime_nat_def assms(1) assms(2) less_irrefl_nat less_numeral_extra(4) prime_product)
  thus "a = 1 \<or> b = 1"
  proof (cases "a > 1")
    case True
    then have "b = 1" using assms 
      by (metis less_not_refl3 prime_product)
    then show ?thesis by auto
  next
    case False
    then have "a = 1" using assms(1) 
      by (metis assms(2) mult.comm_neutral mult.commute mult_delta_right prime_gt_1_nat prime_product)
    then show ?thesis by auto
  qed
qed