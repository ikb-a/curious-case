lemma mod_addition:
  fixes a b :: nat
  assumes "a mod 10 = 0" and "b mod 10 = 6"
  shows "(a + b) mod 10 = 6"