lemma mod_linear_combination:
  fixes a b c d m :: nat
  assumes "a mod m = b" "c mod m = d"
  shows "(a + c) mod m = (b + d) mod m"