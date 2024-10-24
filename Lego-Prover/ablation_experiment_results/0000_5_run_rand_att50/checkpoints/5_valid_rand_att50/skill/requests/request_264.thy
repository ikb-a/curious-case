lemma solve_congruence:
  fixes a b m n :: nat
  assumes "a < m" "b < n"
  shows "\<exists> x. x mod m = a \<and> x mod n = b"