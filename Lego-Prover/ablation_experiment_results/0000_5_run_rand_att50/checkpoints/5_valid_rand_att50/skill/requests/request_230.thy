lemma mod_congruence:
  fixes N :: nat
  assumes "N < 50"
  shows "N mod 8 = 5 \<and> N mod 6 = 3 \<Longrightarrow> N = 21 + 24 * k \<and> k \<in {0, 1}"