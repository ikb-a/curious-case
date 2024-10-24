lemma non_negative_property:
  fixes a b :: real
  shows "a^2 + b^2 \<ge> 0"
proof -
  have "a^2 >= 0" 
    by (simp add: power2_eq_square)
  moreover have "b^2 >= 0" 
    by (simp add: power2_eq_square)
  ultimately show "a^2 + b^2 \<ge> 0" 
    by (simp add: add_nonneg_nonneg)
qed