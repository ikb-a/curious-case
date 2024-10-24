lemma positive_integer_solution:
  fixes n :: nat
  assumes "n > 0"
  shows "(n-2)*(n-1) = 2 \<longrightarrow> n = 3"