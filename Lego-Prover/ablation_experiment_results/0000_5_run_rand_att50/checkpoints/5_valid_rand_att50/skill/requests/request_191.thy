lemma prime_product:
  fixes n :: nat
  assumes "n > 0"
  shows "prime ((n-2)*(n-1)) \<longleftrightarrow> (n-2)*(n-1) = 2"