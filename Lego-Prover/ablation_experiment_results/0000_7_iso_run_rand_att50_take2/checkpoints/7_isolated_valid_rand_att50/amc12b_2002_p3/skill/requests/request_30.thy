lemma prime_check:
  fixes p :: nat
  assumes "p > 1"
  shows "prime p \<longleftrightarrow> (\<exists>k. k > 1 \<and> k < p \<and> p mod k = 0)"