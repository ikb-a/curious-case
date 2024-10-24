lemma mod_simplification:
  fixes a b m :: nat
  assumes "a mod m = b"
  shows "(a + c) mod m = (b + c) mod m"