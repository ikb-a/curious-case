lemma mod_add:
  fixes a b :: nat
  assumes "m > 0"
  shows "(a + b) mod m = ((a mod m) + (b mod m)) mod m"