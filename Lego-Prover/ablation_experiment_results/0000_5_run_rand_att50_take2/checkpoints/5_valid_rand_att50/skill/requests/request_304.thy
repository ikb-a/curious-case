lemma sum_floor_inequality:
  fixes r :: real
  assumes "n = floor r" "m = floor (r + k / 100)" for k :: nat
  shows "n + m = floor (r + k / 100) + m"