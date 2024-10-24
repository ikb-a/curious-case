lemma sum_floor_expression:
  fixes r :: real and n :: nat and m :: nat
  assumes "n = floor r" "0 \<le> m" "m + n + 73 = 546"
  shows "m = 546 - 73 * n"