lemma chinese_remainder:
  fixes a b c d :: nat
  assumes "a mod m = b" "c mod n = d" "coprime m n"
  shows "\<exists>x. x mod m = b \<and> x mod n = d"