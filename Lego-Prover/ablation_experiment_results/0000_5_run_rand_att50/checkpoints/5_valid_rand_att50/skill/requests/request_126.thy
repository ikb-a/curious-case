lemma possible_values:
  fixes N :: nat
  shows "N < 50 \<and> N mod 8 = 5 \<and> N mod 6 = 3 \<longrightarrow> N = 21 \<or> N = 45"