lemma floor_rational:
  fixes r :: real
  assumes "r = a / b" and "b > 0"
  shows "floor r = floor a div b"