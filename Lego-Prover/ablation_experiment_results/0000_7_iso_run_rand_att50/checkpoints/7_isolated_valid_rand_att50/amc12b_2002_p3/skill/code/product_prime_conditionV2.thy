lemma product_prime_condition:
  fixes a b :: nat
  assumes "prime (a * b)"
  shows "a = 1 \<or> b = 1"
proof (cases "a = 1")
  case True
  then show ?thesis by auto
next
  case False
  then have "a > 1" by (metis Primes.prime_nat_def assms mult.right_neutral prime_gt_1_nat prime_product)
  have "a * b > 1" using False assms prime_gt_1_nat by auto
  then have "1 < a * b" using assms by (simp add: prime_gt_1_nat)
  have "prime (a * b) \<Longrightarrow> a > 1 \<Longrightarrow> b = 1" 
    using assms False prime_def prime_product by auto
  thus ?thesis using `a > 1` by (metis assms)
qed