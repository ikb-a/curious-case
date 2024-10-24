lemma floor_value_bounds:
  fixes r :: real
  assumes "k1 < k2" "k1, k2 \<in> {19::nat..<92}"
  shows "floor (r + k1 / 100) = floor (r + k2 / 100) \<or> floor (r + k1 / 100) = floor (r + k2 / 100) + 1"