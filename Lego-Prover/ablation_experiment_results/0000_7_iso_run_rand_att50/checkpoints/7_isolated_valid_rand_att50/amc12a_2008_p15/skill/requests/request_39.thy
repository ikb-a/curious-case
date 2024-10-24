lemma units_digit_sum:
  fixes a b :: nat
  shows "(a + b) mod 10 = (a mod 10 + b mod 10) mod 10"
  by (simp add: mod_add)