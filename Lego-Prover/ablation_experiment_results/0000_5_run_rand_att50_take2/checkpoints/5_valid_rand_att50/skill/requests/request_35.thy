lemma mod_congruence:
  fixes N :: nat
  assumes "N mod 8 = 5" "N mod 6 = 3"
  shows "N = 24k + 21" for some integer k