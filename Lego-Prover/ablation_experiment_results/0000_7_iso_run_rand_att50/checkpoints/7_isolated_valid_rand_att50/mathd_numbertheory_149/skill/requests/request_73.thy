lemma mod_subtraction:
  fixes a b c :: nat
  assumes "a mod m = b" "c mod m = d"
  shows "(a - c) mod m = (b - d) mod m"