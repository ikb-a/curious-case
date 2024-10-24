lemma solve_congruences:
  fixes k :: nat
  assumes "2 * k mod 6 = 4"
  shows "k = 3m + 2" for some integer m