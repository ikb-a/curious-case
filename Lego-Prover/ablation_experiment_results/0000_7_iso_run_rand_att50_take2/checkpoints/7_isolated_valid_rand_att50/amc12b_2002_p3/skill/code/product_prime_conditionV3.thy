lemma product_prime_condition:
  fixes a b :: nat
  assumes "prime (a * b)"
  shows "a = 1 \<or> b = 1"
proof -
  have "a * b > 1" using assms by (metis prime_gt_1_nat)
  have "a > 1 \<and> b > 1 \<longrightarrow> a * b > 1" 
    using assms by (metis less_not_refl less_numeral_extra(4) prime_product)
  hence "\<not> (a > 1 \<and> b > 1)" using `a * b > 1` 
    by (metis Primes.prime_nat_def assms less_not_refl less_numeral_extra(4) prime_product)
  thus "a = 1 \<or> b = 1"
  proof (cases "a > 1")
    case True
    then have "b = 1" using assms by (metis less_not_refl3 prime_product)
    then show ?thesis by auto
  next
    case False
    then have "a = 1" using assms(1) by (metis dvdI prime_nat_iff)
    then show ?thesis by auto
  qed
qed