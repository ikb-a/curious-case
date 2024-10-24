lemma prime_product_strong:
  fixes a b :: nat
  assumes "a > 0" "b > 0" "prime (a * b) \<and> a \<noteq> b"
  shows "a = 1 \<or> b = 1"
proof -
  have "prime (a * b) \<longleftrightarrow> (a = 1 \<and> b > 1) \<or> (a > 1 \<and> b = 1)"
    using assms by (metis Primes.prime_nat_def mult.right_neutral mult_1 prime_nat_iff prime_product)
  have "a \<noteq> b" using assms(3) by simp
  then show ?thesis 
  proof (cases "a = 1")
    case True
    then show ?thesis by simp
  next
    case False
    then have "b = 1" using assms(1) assms(3) by (metis \<open>prime (a * b) = (a = 1 \<and> 1 < b \<or> 1 < a \<and> b = 1)\<close>)
    thus ?thesis by simp
  qed
qed