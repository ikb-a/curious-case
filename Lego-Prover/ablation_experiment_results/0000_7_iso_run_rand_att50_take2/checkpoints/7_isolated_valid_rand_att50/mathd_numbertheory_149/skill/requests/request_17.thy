lemma chinese_remainder_theorem:
  fixes a b c d :: nat
  assumes "a < b" "c < d" "gcd b d = 1"
  shows "\<exists>x. x mod b = a \<and> x mod d = c"