lemma sum_floor_bounds:
  fixes r :: real
  assumes "n ≤ r < n + 1"
  shows "∑ k ∈ {m..n}. floor (r + k) = (n - m + 1) * n + (floor (r + n + 1) - n) * (n - m + 1)"