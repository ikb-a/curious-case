lemma power_of_two_mod:
  fixes k :: nat
  assumes "k mod 4 = 0"
  shows "2^k mod 10 = 6"