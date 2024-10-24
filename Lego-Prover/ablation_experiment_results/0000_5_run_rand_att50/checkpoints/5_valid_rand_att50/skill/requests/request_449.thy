lemma floor_div:
  fixes a b :: real
  assumes "b > 0"
  shows "floor (a / b) = floor a div floor b"