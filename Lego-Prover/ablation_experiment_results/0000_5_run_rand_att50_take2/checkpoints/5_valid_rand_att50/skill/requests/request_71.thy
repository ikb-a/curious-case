lemma chinese_remainder:
  fixes a b m n :: nat
  assumes "a mod m = b" "a mod n = c"
  shows "a = k * lcm m n + b" for some integer k