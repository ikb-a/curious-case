lemma product_even_odd:
  fixes a b :: nat
  assumes "even a" "odd b"
  shows "even (a * b)"
  by (metis even_mult_iff)