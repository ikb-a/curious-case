lemma transition_floor:
  fixes r :: real
  assumes "n = floor r" "0 <= f" "f < 1"
  shows "floor (r + k / 100) = n \<or> floor (r + k / 100) = n + 1"