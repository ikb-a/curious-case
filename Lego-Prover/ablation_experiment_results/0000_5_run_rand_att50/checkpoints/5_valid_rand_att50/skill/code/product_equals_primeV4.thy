lemma product_equals_prime:
  fixes p :: nat
  assumes "prime p"
  shows "\<exists>a b. a * b = p \<and> (a = 1 \<or> b = 1)"
proof -
  have "p > 1" using assms by (simp add: prime_def)
  let ?a = "1"
  let ?b = "p"
  have "1 * p = p" by simp
  moreover have "?a = 1 \<or> ?b = 1" by simp
  ultimately show "\<exists>a b. a * b = p \<and> (a = 1 \<or> b = 1)" 
    by (metis)
qed