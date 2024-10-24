lemma sum_of_squares_non_negativity:
  fixes x y z :: real
  shows "x^2 + y^2 + z^2 \<ge> 0"
proof -
  have "x^2 \<ge> 0" by (simp add: power2_eq_square)
  have "y^2 \<ge> 0" by (simp add: power2_eq_square)
  have "z^2 \<ge> 0" by (simp add: power2_eq_square)
  then show ?thesis by auto
qed