lemma mod_4_subtraction:
  fixes a b :: int
  shows "(a - b) mod 4 = ((a mod 4) - (b mod 4)) mod 4"
  by presburger