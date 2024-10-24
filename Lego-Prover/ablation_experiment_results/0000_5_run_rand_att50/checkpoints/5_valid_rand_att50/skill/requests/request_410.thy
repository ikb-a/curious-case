lemma simplify_congruence:
  fixes k :: nat
  assumes "2 * k + 5 ≡ 3 (mod 6)"
  shows "k ≡ 2 (mod 3)"