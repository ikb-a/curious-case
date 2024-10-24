lemma chinese_remainder:
  fixes a b m n :: nat
  assumes "m > 0" "n > 0" "a mod m = b mod m"
  shows "\<exists>x. x mod (m * n) = a \<and> x mod m = b"