lemma sum_expression:
  fixes n x :: nat
  assumes "n = floor r"
  shows "((73 - x) * n) + (x * (n + 1)) = 546"