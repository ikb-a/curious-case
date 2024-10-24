lemma calculate_x:
  fixes n :: nat
  assumes "n \<le> 7"
  shows "x = 546 - 73 * n"