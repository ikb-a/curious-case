lemma even_product_prime:
  assumes "p = a * b" and "prime p" and "a > 0" and "b > 0"
  shows "p = 2 \<longleftrightarrow> (a = 1 \<and> b = 2) \<or> (a = 2 \<and> b = 1)"
  by (metis assms(1) prime_def prime_2)