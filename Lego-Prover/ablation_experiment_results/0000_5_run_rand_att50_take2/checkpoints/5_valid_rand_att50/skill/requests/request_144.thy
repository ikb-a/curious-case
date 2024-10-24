lemma floor_behavior:
  fixes r :: real
  assumes "n = floor r"
  shows "floor (r + k / 100) = (if r + k / 100 < n + 1 then n else n + 1)"