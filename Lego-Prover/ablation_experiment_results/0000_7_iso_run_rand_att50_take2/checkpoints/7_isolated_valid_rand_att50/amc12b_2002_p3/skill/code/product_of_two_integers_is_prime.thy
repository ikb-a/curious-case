lemma product_of_two_integers_is_prime:
  fixes a b :: nat
  assumes "a > 0" "b > 0" "prime (a * b)"
  shows "a = 1 \<or> b = 1"
proof -
  from assms(3) have "a * b > 1" by (metis prime_gt_1_nat)
  have "a > 1 \<and> b > 1 \<longrightarrow> a * b > 1" using assms(1) assms(2) by (metis \<open>1 < a * b\<close>)
  hence "\<not> (a > 1 \<and> b > 1)" using `a * b > 1` by (metis Primes.prime_nat_def assms(3) less_not_refl less_numeral_extra(4) prime_product)
  thus "a = 1 \<or> b = 1"
  proof (cases "a > 1")
    case True
    then have "b = 1" using assms(3) by (metis less_not_refl3 prime_product)
    then show ?thesis by auto
  next
    case False
    then have "a = 1" using assms(1) by auto
    then show ?thesis by auto
  qed
qed