lemma floor_inequality:
  fixes x :: real
  assumes "a < x < b"
  shows "floor a < floor x < floor b"