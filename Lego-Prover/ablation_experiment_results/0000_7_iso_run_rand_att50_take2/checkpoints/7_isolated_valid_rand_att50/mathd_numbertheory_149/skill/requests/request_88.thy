lemma substitution:
  fixes k :: nat
  assumes "N mod 8 = 5" "N mod 6 = 3"
  shows "2k + 5 mod 6 = 3"