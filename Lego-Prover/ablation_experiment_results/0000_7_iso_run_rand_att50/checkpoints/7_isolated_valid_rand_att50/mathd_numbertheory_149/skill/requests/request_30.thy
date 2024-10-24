lemma solve_congruences:
  fixes k :: nat
  assumes "k mod 3 = 2"
  shows "k = 3m + 2" for some integer m