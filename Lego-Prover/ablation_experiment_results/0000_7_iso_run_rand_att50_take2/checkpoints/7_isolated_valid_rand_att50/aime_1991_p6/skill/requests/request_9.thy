lemma floor_bounds:
  fixes a b :: real
  assumes "a < b"
  shows "floor a < floor b"