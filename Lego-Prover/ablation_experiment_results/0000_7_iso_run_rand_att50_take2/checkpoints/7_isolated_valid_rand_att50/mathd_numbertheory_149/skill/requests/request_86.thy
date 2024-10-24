lemma congruences:
  fixes n :: nat
  assumes "n < 50"
  shows "n mod 8 = 5 \<and> n mod 6 = 3 \<longrightarrow> n = 8k + 5" for k :: nat