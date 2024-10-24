lemma chinese_remainder_theorem:
  fixes a b c d :: nat
  assumes "a > 0" "b > 0" "c > 0" "d > 0"
    and "x mod a = c" "x mod b = d"
  shows "x mod (lcm a b) = (c + d) mod (lcm a b)"