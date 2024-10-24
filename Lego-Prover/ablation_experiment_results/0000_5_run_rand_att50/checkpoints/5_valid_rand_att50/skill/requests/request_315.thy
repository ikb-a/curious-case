lemma chinese_remainder:
  fixes a b m n :: nat
  assumes "m > 0" "n > 0" "a mod m = b mod m"
  shows "\<exists>k. k mod (lcm m n) = a mod (lcm m n)"