lemma floor_value_range:
  fixes r :: real and k :: nat
  assumes "19 \<le> k \<and> k < 92"
  shows "floor (r + k / 100) = floor r \<or> floor (r + k / 100) = floor r + 1"