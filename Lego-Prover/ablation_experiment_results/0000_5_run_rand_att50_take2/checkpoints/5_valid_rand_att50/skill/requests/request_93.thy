lemma mod_addition:
  fixes a b :: nat
  assumes "a mod n = x" and "b mod n = y"
  shows "(a + b) mod n = (x + y) mod n"