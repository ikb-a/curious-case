lemma floor_sum_properties:
  fixes r :: real
  assumes "n = floor r"
  shows "floor (r + k / 100) = n \<or> floor (r + k / 100) = n + 1"