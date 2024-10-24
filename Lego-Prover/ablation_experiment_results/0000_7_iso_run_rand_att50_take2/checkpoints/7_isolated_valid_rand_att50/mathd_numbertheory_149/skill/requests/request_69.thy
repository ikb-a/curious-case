lemma chinese_remainder:
  fixes a b c d :: nat
  assumes "coprime a b"
  shows "\<exists>x. x mod a = c \<and> x mod b = d"