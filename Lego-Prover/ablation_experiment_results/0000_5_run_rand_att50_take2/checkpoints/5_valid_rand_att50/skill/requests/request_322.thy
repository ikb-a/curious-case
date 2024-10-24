lemma chinese_remainder_theorem:
  fixes a b :: nat
  assumes "a > 0" "b > 0" "x mod a = r1" "x mod b = r2"
  shows "x = k * lcm a b + r1" for some integer k