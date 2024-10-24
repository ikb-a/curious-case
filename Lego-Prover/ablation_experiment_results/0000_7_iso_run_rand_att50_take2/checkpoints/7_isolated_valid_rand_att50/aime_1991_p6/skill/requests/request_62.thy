lemma case_analysis_floor:
  fixes r :: real
  shows "(\<exists>n. floor r = n) \<longrightarrow> (floor (r + k) = n \<or> floor (r + k) = n + 1)"