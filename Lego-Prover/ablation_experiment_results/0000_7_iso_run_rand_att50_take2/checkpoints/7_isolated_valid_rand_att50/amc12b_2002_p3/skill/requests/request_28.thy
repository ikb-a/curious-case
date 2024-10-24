lemma even_odd_product:
  fixes a b :: nat
  assumes "even a" and "odd b"
  shows "even (a * b)"