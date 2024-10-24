lemma floor_sum_properties:
  fixes r :: real
  assumes "a < r < b"
  shows "floor r = a \<Longrightarrow> floor (r + k) = a + 1 \<or> floor (r + k) = a"