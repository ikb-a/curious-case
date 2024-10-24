lemma floor_sum:
  fixes r :: real
  assumes "a ≤ r < b"
  shows "floor (Σ k ∈ {m..n}. (floor (r + k))) = Σ k ∈ {m..n}. (floor (r + k))"