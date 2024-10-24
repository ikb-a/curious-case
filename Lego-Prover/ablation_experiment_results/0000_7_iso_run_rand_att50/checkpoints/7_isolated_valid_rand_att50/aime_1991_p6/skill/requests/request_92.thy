lemma floor_fractional_part:
  fixes r :: real
  shows "floor r = n \<Longrightarrow> r = n + f \<Longrightarrow> 0 <= f < 1"