lemma floor_addition:
  fixes r :: real and k :: real
  assumes "k > 0" 
  shows "floor (r + k) = floor r + (if r + k < floor r + 1 then 0 else 1)"