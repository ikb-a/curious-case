lemma floor_sum_properties:
  fixes r :: real
  assumes "(\<Sum> k \<in>{19::nat..<92}. (floor (r + k / 100))) = 546"
  shows "r + 0.19 < 8.01 \<and> r + 0.57 \ge 8"