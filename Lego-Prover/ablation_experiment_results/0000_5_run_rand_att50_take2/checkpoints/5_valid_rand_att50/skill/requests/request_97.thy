lemma solve_congruences:
  fixes a b m n :: nat
  assumes "N mod m = a" and "N mod n = b"
  shows "N = k * lcm m n + r" for some integer \( k \) and remainder \( r \)