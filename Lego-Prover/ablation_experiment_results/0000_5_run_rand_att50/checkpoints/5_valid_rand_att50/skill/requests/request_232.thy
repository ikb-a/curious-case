lemma floor_sum_properties:
  fixes r :: real
  assumes "a \<le> r < b"
  shows "floor (r + c) = floor r + floor c \<or> floor (r + c) = floor r + floor c + 1"