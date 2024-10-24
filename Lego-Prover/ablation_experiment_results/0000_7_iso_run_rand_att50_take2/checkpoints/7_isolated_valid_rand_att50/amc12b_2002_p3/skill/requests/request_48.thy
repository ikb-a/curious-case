lemma prime_product:
  fixes n :: nat
  assumes "n > 0"
  shows "prime ((n - 1) * (n - 2)) \<longleftrightarrow> (n - 1) * (n - 2) = 2"