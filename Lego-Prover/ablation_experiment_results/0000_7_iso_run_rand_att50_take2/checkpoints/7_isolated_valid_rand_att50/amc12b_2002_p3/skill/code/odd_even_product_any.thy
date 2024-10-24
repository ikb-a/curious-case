lemma odd_even_product_any:
  fixes a b :: nat
  assumes "odd a" and "even b"
  shows "even (a * b)"
  using odd_even_product_generalized[of a b] assms by simp