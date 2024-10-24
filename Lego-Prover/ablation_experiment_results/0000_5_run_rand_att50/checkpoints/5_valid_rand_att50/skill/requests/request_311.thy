lemma floor_function_bounds:
  fixes r :: real
  assumes "8 \<le> r + 0.57 \<and> r + 0.57 < 9"
  shows "743/100 \<le> r \<and> r < 744/100"