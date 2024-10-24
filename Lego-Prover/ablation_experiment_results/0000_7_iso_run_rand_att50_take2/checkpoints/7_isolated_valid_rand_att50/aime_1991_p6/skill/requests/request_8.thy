lemma floor_bounds:
  fixes r :: real
  assumes "a < r < b"
  shows "floor r = a \<Longrightarrow> a < r < a + 1"