lemma floor_sum_bounds:
  fixes r :: real
  assumes "(\<Sum> k \<in>{19::nat..<92}. (floor (r + k / 100))) = 546"
  shows "11.81 \<le> r \<and> r < 12.81 \<or> 43.81 \<le> r \<and> r < 44.81"