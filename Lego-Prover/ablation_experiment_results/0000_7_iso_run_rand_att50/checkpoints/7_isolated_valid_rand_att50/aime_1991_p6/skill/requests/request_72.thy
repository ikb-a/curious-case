lemma floor_sum:
  fixes r :: real
  assumes "a ≤ r" "r < b"
  shows "floor (r + x) = floor r + floor x" if "x ∈ {0..1}"