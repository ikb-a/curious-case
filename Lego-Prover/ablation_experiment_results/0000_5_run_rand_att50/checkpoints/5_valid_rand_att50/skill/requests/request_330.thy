lemma congruence_manipulation:
  fixes a b c d :: nat
  assumes "a > 0" "c > 0"
  shows "b mod a = d mod a \<longleftrightarrow> (b - d) mod a = 0"