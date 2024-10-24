lemma floor_sum:
  fixes r :: real
  assumes "a \<le> r < b"
  shows "floor (r) = a \<Longrightarrow> floor (r + k) = floor (r) + floor (k)"