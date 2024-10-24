lemma mod_add:
  fixes a b m :: nat
  shows "(a mod m + b mod m) mod m = (a + b) mod m"

lemma mod_square:
  fixes a m :: nat
  shows "(a mod m)^2 mod m = (a^2) mod m"

lemma mod_power:
  fixes a m :: nat
  assumes "m > 0"
  shows "(a mod m) ^ n mod m = (a ^ n) mod m"