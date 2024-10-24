lemma non_negative_squares:
  fixes x y :: real
  shows "x^2 + y^2 \<ge> 0"
proof -
  have "x^2 \<ge> 0" by (auto simp add: power2_eq_square)
  have "y^2 \<ge> 0" by (auto simp add: power2_eq_square)
  then show ?thesis 
    by (simp add: add_nonneg_nonneg)
qed