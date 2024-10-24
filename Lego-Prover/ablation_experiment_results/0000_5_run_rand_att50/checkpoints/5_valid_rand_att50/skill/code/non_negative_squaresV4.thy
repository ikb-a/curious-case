lemma non_negative_squares:
  fixes a b :: real
  shows "a^2 >= 0" and "b^2 >= 0"
proof -
  have "a^2 = a * a" by sos
  then show "a^2 >= 0" 
    using mult_nonneg_nonneg[of a a] 
    by auto
  have "b^2 = b * b" by sos
  then show "b^2 >= 0" 
    using mult_nonneg_nonneg[of b b] 
    by auto
qed