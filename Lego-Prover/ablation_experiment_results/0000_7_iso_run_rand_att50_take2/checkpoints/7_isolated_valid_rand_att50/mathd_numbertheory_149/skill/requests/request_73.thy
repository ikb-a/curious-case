lemma mod_add:
  fixes a b c m :: nat
  assumes "a mod m = b"
  shows "(a + c) mod m = (b + c) mod m"