lemma non_negativity_of_squares_extended:
  fixes a b :: real
  shows "a^2 >= 0 \<and> b^2 >= 0"
proof -
  have "a^2 = a * a" by sos
  moreover have "b^2 = b * b" by sos
  ultimately have "a^2 >= 0" using mult_nonneg_nonneg by auto
  moreover have "b^2 >= 0" using mult_nonneg_nonneg by auto
  ultimately show ?thesis by simp
qed