lemma combine_congruences:
  fixes a b c d m n :: nat
  assumes "a mod m = b" "c mod n = d"
  shows "a + c mod (lcm m n) = (b + d) mod (lcm m n)"