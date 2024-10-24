lemma floor_function_properties:
  fixes x :: real
  shows "floor (x + k) = floor x + floor k" if "k \<in> {0..1}" 