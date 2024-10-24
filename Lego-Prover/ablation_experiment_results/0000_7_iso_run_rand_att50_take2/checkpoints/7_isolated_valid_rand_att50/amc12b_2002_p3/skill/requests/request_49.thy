lemma consecutive_integers_product:
  fixes n :: nat
  assumes "n > 0"
  shows "(n-2)*(n-1) = 2 \<longleftrightarrow> n = 3"