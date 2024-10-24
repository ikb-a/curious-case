lemma case_analysis_floor:
  fixes r :: real
  shows "(\<exists>n. floor r = n) \<and> (0 \<le> r - floor r < 1)"