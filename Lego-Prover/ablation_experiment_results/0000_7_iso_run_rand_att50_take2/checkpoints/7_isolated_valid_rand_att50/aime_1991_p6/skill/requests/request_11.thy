lemma floor_properties:
  fixes r :: real
  shows "floor (r + k) = floor r + floor k" if "k >= 0"