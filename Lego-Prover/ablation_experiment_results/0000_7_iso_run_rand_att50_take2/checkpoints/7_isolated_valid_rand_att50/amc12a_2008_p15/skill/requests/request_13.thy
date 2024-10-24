lemma mod_add:
  fixes a b m :: nat
  assumes "a mod m = x" and "b mod m = y"
  shows "(a + b) mod m = (x + y) mod m"