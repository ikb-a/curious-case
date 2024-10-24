lemma mod_square:
  fixes a m :: nat
  assumes "a mod m = b"
  shows "(a^2) mod m = (b^2) mod m"