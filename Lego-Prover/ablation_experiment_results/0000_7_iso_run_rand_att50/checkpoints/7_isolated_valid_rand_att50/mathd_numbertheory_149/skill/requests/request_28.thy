lemma mod_arithmetic_properties:
  fixes a b c d :: nat
  assumes "a mod m = b" and "c mod n = d"
  shows "(a + c) mod (m * n) = (b + d) mod (m * n)"