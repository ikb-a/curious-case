lemma non_negative_squares:
  fixes a b :: real
  shows "0 \<le> a^2" and "0 \<le> b^2"
proof -
  show "0 \<le> a^2" by (simp add: square_expansion)
  show "0 \<le> b^2" by (simp add: square_expansion)
qed