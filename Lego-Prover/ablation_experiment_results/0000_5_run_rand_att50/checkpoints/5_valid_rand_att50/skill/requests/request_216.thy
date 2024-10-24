lemma prime_factorization:
  fixes n :: nat
  assumes "n > 0"
  shows "prime (n^2 - 3*n + 2) \<longleftrightarrow> (n - 2 = 1 \<and> n - 1 = 2) \<or> (n - 2 = 2 \<and> n - 1 = 1)"