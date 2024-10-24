lemma non_negative_squares:
  fixes a b c :: real
  shows "0 \<le> a^2" and "0 \<le> b^2" and "0 \<le> c^2" 
proof -
  show "0 \<le> a^2" by (simp add: power2_eq_square)
  show "0 \<le> b^2" by (simp add: power2_eq_square)
  show "0 \<le> c^2" by (simp add: power2_eq_square)
qed