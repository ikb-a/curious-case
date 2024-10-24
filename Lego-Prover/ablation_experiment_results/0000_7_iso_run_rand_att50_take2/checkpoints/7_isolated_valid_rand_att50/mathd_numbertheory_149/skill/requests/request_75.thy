lemma congruence_manipulation:
  fixes a b m n :: nat
  assumes "a mod m = b" "n > 0"
  shows "a + n mod m = (b + n) mod m"