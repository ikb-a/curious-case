lemma sum_expression:
  fixes n :: int and x :: nat
  assumes "x + (73 - x) * (n + 1) = 546"
  shows "x * n + (73 - x) * (n + 1) = 546"