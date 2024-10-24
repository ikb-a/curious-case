lemma mod_square:
  fixes a m :: nat
  assumes "a mod m = x"
  shows "(a^2) mod m = (x^2) mod m"