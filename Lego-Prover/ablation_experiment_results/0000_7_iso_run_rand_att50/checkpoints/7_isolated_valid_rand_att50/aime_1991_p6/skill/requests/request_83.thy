lemma sum_floor_terms:
  fixes n x :: nat
  assumes "x + n = total_sum"
  shows "n * floor_value + x * (floor_value + 1) = total_sum"