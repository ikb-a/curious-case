lemma solve_congruence:
  fixes a b m n :: nat
  assumes "m > 0" "n > 0"
  shows "\<exists>x. x mod m = a \<and> x mod n = b"