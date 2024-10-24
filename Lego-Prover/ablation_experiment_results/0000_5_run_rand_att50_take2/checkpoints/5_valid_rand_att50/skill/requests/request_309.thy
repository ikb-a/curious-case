lemma units_digit_square:
  fixes n :: nat
  shows "(n^2) mod 10 = (n mod 10)^2 mod 10"
  by (simp add: power2_eq_square)