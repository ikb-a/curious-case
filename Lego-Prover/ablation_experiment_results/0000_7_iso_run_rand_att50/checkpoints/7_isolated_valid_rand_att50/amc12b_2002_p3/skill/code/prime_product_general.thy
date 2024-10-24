lemma prime_product_general:
  fixes a b :: nat
  assumes "a > 0" "b > 0" "prime (a * b)"
  shows "a = 1 \<or> b = 1"
proof -
  have "prime (a * b) \<longleftrightarrow> (a = 1 \<and> b > 1) \<or> (a > 1 \<and> b = 1)" using assms by (metis Primes.prime_nat_def mult.right_neutral mult_1 prime_nat_iff prime_product)
  thus ?thesis by (metis assms(3))
qed