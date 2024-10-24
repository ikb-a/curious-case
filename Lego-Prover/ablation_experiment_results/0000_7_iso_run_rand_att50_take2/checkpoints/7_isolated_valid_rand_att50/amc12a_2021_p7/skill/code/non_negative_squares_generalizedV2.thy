lemma non_negative_squares_generalized:
  fixes a b :: real
  assumes "a \<in> \<real>" and "b \<in> \<real>"
  shows "a^2 \<ge> 0" and "b^2 \<ge> 0"
proof -
  have "a^2 = a * a" by sos
  thus "a^2 \<ge> 0" 
    by (cases "a \<ge> 0") (auto simp: mult_nonneg_nonneg)
  have "b^2 = b * b" by sos
  thus "b^2 \<ge> 0" 
    by (cases "b \<ge> 0") (auto simp: mult_nonneg_nonneg)
qed