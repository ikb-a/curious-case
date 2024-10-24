lemma floor_behavior:
  fixes r :: real and k :: nat
  shows "floor (r + k / 100) = floor r \<or> floor (r + k / 100) = floor r + 1"