lemma trivial_inequality:
  fixes a b :: real
  shows "0 \<le> a^2" and "0 \<le> b^2"
proof -
  show "0 \<le> a^2" using non_negative_square[of a] by simp
  show "0 \<le> b^2" using non_negative_square[of b] by simp
qed