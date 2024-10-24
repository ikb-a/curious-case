lemma non_negative_squares:
  fixes a :: real
  shows "0 \<le> a^2"
proof -
  have "a^2 = a * a" by (simp add: power2_eq_square)
  then show ?thesis 
    by (cases "a \<ge> 0") (auto simp: mult_nonneg_nonneg)
qed