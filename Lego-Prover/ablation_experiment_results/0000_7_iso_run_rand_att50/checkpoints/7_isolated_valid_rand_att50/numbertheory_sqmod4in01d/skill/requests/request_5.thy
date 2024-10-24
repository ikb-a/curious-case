lemma basic_arithmetic_mod:
  fixes a b :: int
  shows "(a + b) mod m = ((a mod m) + (b mod m)) mod m"