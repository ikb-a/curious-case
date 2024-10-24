lemma floor_sum_property:
  fixes r :: real
  assumes "(\<Sum> k \<in>{19::nat..<92}. (floor (r + k / 100))) = 546"
  shows "floor (r + 57 / 100) = 8 \<longleftrightarrow> 743 / 100 \<le> r \<and> r < 744 / 100"