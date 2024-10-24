lemma bounds_on_r:
  fixes r :: real
  assumes "n = floor r" "x = 546 - 73 * n" "x ≥ 0"
  shows "n ≤ 7"