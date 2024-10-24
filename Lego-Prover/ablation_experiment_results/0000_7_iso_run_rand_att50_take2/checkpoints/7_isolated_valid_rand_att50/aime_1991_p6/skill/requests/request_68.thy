lemma sum_floor_inequality:
  fixes a :: nat
  assumes "x + (73 - x) * (a + 1) = 546"
  shows "x = 73a - 473"