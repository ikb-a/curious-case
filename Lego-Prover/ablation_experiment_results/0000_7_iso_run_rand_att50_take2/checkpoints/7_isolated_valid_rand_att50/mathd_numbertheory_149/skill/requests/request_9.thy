lemma congruence_analysis:
  fixes N :: nat
  assumes "N < 50" "N mod 8 = 5" "N mod 6 = 3"
  shows "N = 24k + 21" for some nat k