lemma mod_sum:
  fixes a b :: nat
  assumes "a mod 10 + b mod 10 < 10"
  shows "(a + b) mod 10 = (a mod 10 + b mod 10)"