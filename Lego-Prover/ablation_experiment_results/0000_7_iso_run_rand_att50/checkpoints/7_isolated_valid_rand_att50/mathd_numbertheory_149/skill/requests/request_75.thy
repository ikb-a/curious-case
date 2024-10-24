lemma chinese_remainder:
  fixes a b c d :: nat
  assumes "a mod m = b" "c mod n = d" "m coprime n"
  shows "\<exists>x. x mod m = b \<and> x mod n = d"