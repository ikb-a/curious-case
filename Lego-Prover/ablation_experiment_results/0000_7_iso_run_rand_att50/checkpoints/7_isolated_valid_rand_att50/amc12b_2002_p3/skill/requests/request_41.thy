lemma product_of_consecutive_integers:
  fixes n :: nat
  assumes "n > 0"
  shows "(n - 1) * (n - 2) = p \<Longrightarrow> p = 2 \<Longrightarrow> n = 3"