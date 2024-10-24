lemma rearrangement:
  fixes n :: int and x :: nat
  assumes "x + 73 * n + 73 - x = 546"
  shows "73 n - x = 473"