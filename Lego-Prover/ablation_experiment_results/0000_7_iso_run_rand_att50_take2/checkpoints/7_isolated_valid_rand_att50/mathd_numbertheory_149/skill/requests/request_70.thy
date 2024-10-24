lemma substitute_congruence:
  fixes k :: nat
  assumes "N = 8 * k + 5"
  shows "N mod 6 = 3 \<longleftrightarrow> (2 * k + 5) mod 6 = 3"