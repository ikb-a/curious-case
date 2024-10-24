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
  have "a * b > 1" using False by (metis assms prime_gt_1_nat)
  then have "1 < a * b" using `prime (a * b)` by (metis prime_gt_1_nat)
  have "a > 1 \<Longrightarrow> b = 1" using `prime (a * b)` by (metis prime_def prime_product False)
  thus ?thesis by (metis \<open>1 < a\<close>)
qed