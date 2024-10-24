lemma non_negativity_of_squares:
  fixes a :: real
  shows "a^2 >= 0"
proof -
  have "a^2 = a * a" by sos
  then show ?thesis 
    using mult_nonneg_nonneg[of a a] 
    by auto
qed