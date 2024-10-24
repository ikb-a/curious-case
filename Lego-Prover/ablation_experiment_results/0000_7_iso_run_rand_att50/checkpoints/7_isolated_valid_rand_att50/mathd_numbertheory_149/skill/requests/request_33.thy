lemma congruences:
  fixes N :: nat
  assumes "N < 50"
  shows "N mod 8 = 5 \<and> N mod 6 = 3 \<longrightarrow> N = 21 \<or> N = 45"