lemma odd_even_product:
  fixes a b :: nat
  assumes "even a" "odd b"
  shows "even (a * b)"