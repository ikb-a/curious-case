lemma product_even_any:
  fixes a b :: nat
  assumes "a mod 2 = 0" and "b mod 2 = c"
  shows "a * b mod 2 = 0"
  using product_even_odd_general[of a b] assms(1) assms(2) by auto