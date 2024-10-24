lemma non_negativity_of_squares:
  fixes a :: real
  shows "a^2 >= 0"
proof -
  have "a^2 = a * a" 
    by sos
  also have "... >= 0"
    using mult_nonneg_nonneg by auto
  finally show ?thesis 
    by simp
qed