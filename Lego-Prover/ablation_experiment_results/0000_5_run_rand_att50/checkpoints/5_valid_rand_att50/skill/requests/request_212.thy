lemma congruence_properties:
  fixes a b c d :: nat
  assumes "a mod m = b" and "c mod m = d"
  shows "(a + c) mod m = (b + d) mod m"