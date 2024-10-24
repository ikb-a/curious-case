lemma floor_rational_properties:
  fixes r :: real
  assumes "r = a / b" and "b > 0"
  shows "floor r = floor a / floor b"