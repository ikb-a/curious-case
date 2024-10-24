lemma non_negative_product_of_squares:
  fixes x y :: real
  shows "(x * y)^2 >= 0"
proof -
  have "x * y = 0 \<or> x * y > 0 \<or> x * y < 0" by sos
  then have "(x * y)^2 >= 0" by (simp add: power2_eq_square)
  show ?thesis by simp
qed