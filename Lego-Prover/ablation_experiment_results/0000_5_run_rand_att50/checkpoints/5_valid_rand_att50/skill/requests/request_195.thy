lemma linear_congruence:
  fixes a b c :: nat
  assumes "b > 0" "c < b"
  shows "\<exists>x. x mod b = c"