lemma floor_count:
  fixes a b :: nat
  assumes "a + b = 73" "a * floor r + b * (floor r + 1) = 546"
  shows "a = 73 * floor r - 473"