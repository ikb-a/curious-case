lemma sum_floor_bounds:
  fixes r :: real
  assumes "(\<Sum> k \<in> A. floor (r + k)) = S"
  shows "floor (r) * |A| + |{k \<in> A. floor (r + k) = floor (r) + 1}| = S"