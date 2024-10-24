lemma product_even_odd:
  fixes a b :: nat
  assumes "a mod 2 = 0" and "b mod 2 = 1"
  shows "a * b mod 2 = 0"