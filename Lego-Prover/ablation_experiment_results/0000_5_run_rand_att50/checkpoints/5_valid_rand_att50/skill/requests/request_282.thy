lemma floor_bound:
  fixes r :: real
  assumes "a \<le> r < a + 1"
  shows "floor (100 * r) = 100 * a"