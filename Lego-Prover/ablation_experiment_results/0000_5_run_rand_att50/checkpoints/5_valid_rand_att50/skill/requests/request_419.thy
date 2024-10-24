lemma sum_floor_range:
  fixes r :: real
  assumes "a ≤ r < b"
  shows "(\<Sum> k \<in> {m..n}. floor (r + k)) = (n - m + 1) * floor r + (if r + n < b then n - m + 1 else 0)"