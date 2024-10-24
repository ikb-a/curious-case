lemma sum_floor_expression:
  fixes n x :: nat
  assumes "n = floor r" and "x = card {k. floor (r + k / 100) = n + 1}"
  shows "x * n + (73 - x) * (n + 1) = 546"