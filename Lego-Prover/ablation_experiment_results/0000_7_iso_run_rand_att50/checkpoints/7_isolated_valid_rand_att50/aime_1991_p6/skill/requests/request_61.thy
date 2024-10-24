lemma floor_sum_property:
  fixes r :: real
  assumes "(\<Sum> k \<in>{19::nat..<92}. (floor (r + k / 100))) = 546"
  shows "floor (r + k / 100) = floor r + 1 \<or> floor (r + k / 100) = floor r"