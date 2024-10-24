lemma system_of_congruences:
  fixes a1 b1 a2 b2 :: nat
  assumes "a1 < b1" "a2 < b2" "gcd b1 b2 = 1"
  shows "\<exists>x. x mod b1 = a1 \<and> x mod b2 = a2"