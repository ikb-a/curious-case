lemma congruence_manipulation:
  fixes k :: nat
  assumes "k mod m = a" "k mod n = b"
  shows "k = m * q + a" for some integer q