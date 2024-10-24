lemma sum_and_inequality:
  fixes n x :: nat
  assumes "x + (73 - x) = 73" "x * n + (73 - x) * (n + 1) = 546"
  shows "n = 7 \<and> x = 38"