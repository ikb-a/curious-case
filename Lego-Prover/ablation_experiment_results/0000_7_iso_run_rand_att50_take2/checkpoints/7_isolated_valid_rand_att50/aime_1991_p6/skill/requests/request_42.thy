lemma floor_values:
  fixes n :: int
  assumes "n = floor r"
  shows "floor (r + k / 100) = n \<or> floor (r + k / 100) = n + 1"