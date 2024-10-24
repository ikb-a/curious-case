lemma chinese_remainder:
  fixes a b c d :: nat
  assumes "a mod m = b" "c mod n = d" "gcd m n = 1"
  shows "x = (b + k * m) mod (m * n) for some integer k"