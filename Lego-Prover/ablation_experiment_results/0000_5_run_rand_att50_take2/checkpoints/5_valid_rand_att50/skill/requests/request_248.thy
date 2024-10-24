lemma find_N:
  fixes k :: nat
  assumes "k < 50"
  shows "k mod 8 = 5 \<longrightarrow> k mod 6 = 3 \<longrightarrow> k = 8*m + 5 \<and> k = 6*n + 3 \<longrightarrow> (\<exists> m n. k = 8*m + 5 \<and> k = 6*n + 3)"