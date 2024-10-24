lemma congruence_8_and_6:
  fixes k :: nat
  assumes "k mod 8 = 5" "k mod 6 = 3"
  shows "k = 24m + 21" for m :: nat