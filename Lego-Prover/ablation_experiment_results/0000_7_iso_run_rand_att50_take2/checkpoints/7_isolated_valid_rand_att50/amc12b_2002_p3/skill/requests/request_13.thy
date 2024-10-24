lemma prime_product_condition:
  fixes n :: nat
  assumes "n > 0"
  shows "prime ((n - 1) * (n - 2)) \<longleftrightarrow> (n - 1 = 1 \<and> (n - 2) = 0) \<or> (n - 2 = 1 \<and> (n - 1) \text{ is prime})"