lemma non_negative_x:
  fixes n :: nat
  assumes "x = 546 - 73 * n" "x >= 0"
  shows "n <= 546 / 73"