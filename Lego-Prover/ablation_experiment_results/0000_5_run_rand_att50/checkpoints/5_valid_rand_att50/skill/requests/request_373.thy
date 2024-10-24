lemma linear_congruence_solution:
  fixes a b c :: nat
  assumes "gcd b d = 1"
  shows "∃x. x mod b = a ∧ x mod d = c"