lemma mod_add:
  fixes a b c m :: nat
  assumes "a mod m = c" "b mod m = d"
  shows "(a + b) mod m = (c + d) mod m"