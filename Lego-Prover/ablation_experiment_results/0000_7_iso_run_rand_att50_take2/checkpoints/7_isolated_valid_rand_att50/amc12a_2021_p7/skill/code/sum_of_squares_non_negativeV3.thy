lemma sum_of_squares_non_negative:
  fixes x y :: real
  shows "x^2 + y^2 \<ge> 0"
proof -
  have "x^2 \<ge> 0" by auto
  hence "x^2 + y^2 \<ge> y^2" by simp
  thus "x^2 + y^2 \<ge> 0" by (cases "y \<ge> 0") (auto simp: add_nonneg_nonneg)
qed