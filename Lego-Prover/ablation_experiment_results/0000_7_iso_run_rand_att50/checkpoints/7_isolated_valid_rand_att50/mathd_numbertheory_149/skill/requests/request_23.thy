lemma congruence_expression:
  fixes x :: nat
  assumes "x mod m = a" "x mod n = b"
  shows "x = k * lcm m n + a" for some integer k