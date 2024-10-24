lemma floor_sum_property:
  fixes r :: real
  assumes "a < r < b"
  shows "floor r = a \<Longrightarrow> floor (r + k) = a + (if k + a < 0 then -1 else 0)"