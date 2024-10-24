lemma solve_congruences:
  fixes a b c d :: nat
  assumes "a > 0" "b > 0" "c > 0" "d > 0"
  shows "\<exists>k. (k mod a = b) \<and> (k mod c = d)"