lemma mod_arithmetic:
  fixes a b c :: nat
  assumes "a mod m = b" "a mod n = c"
  shows "a = k * lcm m n + b" for some integer k