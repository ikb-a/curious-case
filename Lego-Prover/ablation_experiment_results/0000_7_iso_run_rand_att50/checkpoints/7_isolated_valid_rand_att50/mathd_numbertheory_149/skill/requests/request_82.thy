lemma express_k:
  fixes m :: nat
  assumes "k mod 3 = 2"
  shows "k = 3 * m + 2"