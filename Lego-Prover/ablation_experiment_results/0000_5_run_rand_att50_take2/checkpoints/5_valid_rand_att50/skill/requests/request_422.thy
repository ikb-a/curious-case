lemma floor_inequality:
  fixes r :: real
  assumes "x < r + y < x + 1"
  shows "floor (r + y) = x"