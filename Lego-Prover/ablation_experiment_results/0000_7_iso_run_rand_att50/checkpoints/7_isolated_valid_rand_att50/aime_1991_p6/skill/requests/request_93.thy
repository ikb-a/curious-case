lemma case_analysis_floor:
  fixes r :: real
  assumes "(\<Sum> k \<in>{19::nat..<92}. (floor (r + k / 100))) = 546"
  shows "7 \<le> floor r \<and> floor r \<le> 7"