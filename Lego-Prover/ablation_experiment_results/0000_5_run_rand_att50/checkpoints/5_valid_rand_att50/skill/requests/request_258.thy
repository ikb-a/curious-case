lemma floor_sum_count:
  fixes r :: real and n :: int
  assumes "count = 73" and "x = count - (546 - n * count) div 1" 
  shows "x = (546 - n * count) mod 1"