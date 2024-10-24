lemma floor_add:
  fixes r :: real
  assumes "n < r < n + 1"
  shows "floor (r + k) = n + (if k + r < 1 then 0 else 1)"