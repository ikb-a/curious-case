lemma odd_even_product:
  fixes a b :: nat
  assumes "a mod 2 = 0" "b mod 2 = 1"
  shows "(a * b) mod 2 = 0"