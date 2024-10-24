lemma floor_inequality:
  fixes r :: real
  assumes "a < r < b"
  shows "floor a < floor r < floor b"