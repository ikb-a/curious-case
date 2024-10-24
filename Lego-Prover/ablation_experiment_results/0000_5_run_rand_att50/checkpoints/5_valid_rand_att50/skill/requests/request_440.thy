lemma floor_function_properties:
  fixes r :: real
  shows "floor (r + k) = floor r + floor k" if "k \<in> {0..1}" and "r \<in> real"