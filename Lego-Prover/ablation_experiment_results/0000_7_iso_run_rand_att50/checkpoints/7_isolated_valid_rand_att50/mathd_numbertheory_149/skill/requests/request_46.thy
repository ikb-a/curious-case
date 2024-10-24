lemma chinese_remainder_theorem:
  fixes a b c d :: nat
  assumes "a > 0" "b > 0" "c > 0" "d > 0"
    and "x mod a = b" "x mod c = d"
  shows "x = b + a * k" for some integer k, if "b + a * k < lcm a c"