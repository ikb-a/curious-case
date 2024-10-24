lemma sum_floor_inequality:
  fixes r :: real
  assumes "(\<Sum> k \<in> A. floor (r + k)) = S"
  shows "S - |A| < r * |A| \<and> S \le> r * |A| + |A|"