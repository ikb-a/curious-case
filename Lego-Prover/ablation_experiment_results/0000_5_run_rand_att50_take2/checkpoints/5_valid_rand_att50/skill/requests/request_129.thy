lemma congruence_manipulation:
  fixes a b m n :: nat
  assumes "a mod m = b" "b mod n = c"
  shows "(a + k * m) mod n = c" for any integer k