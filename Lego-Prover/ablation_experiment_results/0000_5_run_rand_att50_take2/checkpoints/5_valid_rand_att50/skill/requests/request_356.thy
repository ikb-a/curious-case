lemma chinese_remainder_theorem:
  fixes a b c d :: nat
  assumes "a < b" "c < d" "gcd b d = 1"
  shows "\<exists>k. k mod b = a \<and> k mod d = c"