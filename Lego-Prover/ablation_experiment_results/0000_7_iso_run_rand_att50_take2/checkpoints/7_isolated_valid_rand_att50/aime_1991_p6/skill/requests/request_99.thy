lemma floor_sum_bounds:
  fixes r :: real
  assumes "n > 0"
  shows "floor (r + k) + floor (r + k + 1) + ... + floor (r + k + n - 1) = n * floor r + m" 
  where "m" is the number of terms that exceed \( \lfloor r \rfloor \).