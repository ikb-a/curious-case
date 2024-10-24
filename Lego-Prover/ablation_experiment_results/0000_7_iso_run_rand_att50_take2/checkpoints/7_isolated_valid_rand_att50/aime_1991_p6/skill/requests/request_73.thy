lemma bounds_floor_r:
  fixes floor_r :: nat
  assumes "a + b = 73" "a * floor_r + b * (floor_r + 1) = 546"
  shows "floor_r = 7"