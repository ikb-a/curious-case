lemma count_terms:
  fixes n :: nat
  assumes "n = 73" "x = 7" "y = 8" "x_count + y_count = n" "x_count * x + y_count * y = 546"
  shows "y_count = 35 \<and> x_count = 38"