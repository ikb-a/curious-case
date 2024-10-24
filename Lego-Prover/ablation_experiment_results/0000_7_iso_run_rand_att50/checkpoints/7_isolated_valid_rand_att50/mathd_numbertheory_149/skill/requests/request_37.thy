lemma express_N:
  fixes k :: nat
  assumes "N mod 8 = 5"
  shows "N = 8 * k + 5" for some k