lemma linear_congruence_solution:
  fixes a b c :: nat
  assumes "c > 0" and "a ≡ b (mod c)"
  shows "∃k. a = b + k * c"