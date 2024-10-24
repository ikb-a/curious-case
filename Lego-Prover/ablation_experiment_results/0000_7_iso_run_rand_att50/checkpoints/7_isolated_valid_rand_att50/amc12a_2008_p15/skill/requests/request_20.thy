lemma mod_10_calculation:
  fixes a b :: nat
  assumes "a mod 10 = 4" and "b mod 10 = 6"
  shows "(a + b) mod 10 = 0"