lemma floor_rational_bounds:
  fixes r :: real
  assumes "n ≤ r < n + 1"
  shows "floor (r + k / 100) = n ∨ floor (r + k / 100) = n + 1"