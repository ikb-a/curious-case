lemma floor_function_properties:
  fixes x :: real
  assumes "x = a / b" "b > 0"
  shows "floor x = floor a / floor b"